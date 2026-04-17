# kaoyanReview-2.js 工程级优化方案

**文件**: `Scripts/kaoyanReview-2.js`  
**目标**: 提升性能、可维护性、文案质感与数据准确性  
**策略**: 分阶段迭代，每阶段独立可验证  

---

## 阶段一：文案去 AI 味（最低风险，最高感知收益）

### 目标
将 HUD 风格的"科幻游戏"文案，收敛为"专业备考工具"的语气。

### 修改清单

| 模块 | 当前文案 | 建议文案 |
|------|----------|----------|
| 标题 | `考研数学复习仪表盘` | 保持不变（已 OK） |
| 数据卡片-总错题 | `🚨 当前总错题` | 保持不变 |
| 数据卡片-待剖析 | `🔬 待剖析例题` | 保持不变 |
| 数据卡片-今日复习 | `⏰ 今日待复习` | 保持不变 |
| 数据卡片-遗忘预警 | `🧠 遗忘预警` | 保持不变 |
| alertTiers[0] | `红色警报！错题积压严重！` | `错题较多，建议优先清理` |
| alertTiers[1] | `高危警告！请集中火力！` | `错题量偏高，注意查漏补缺` |
| alertTiers[2] | `不错，有几个小挑战！` | `状态平稳，继续保持` |
| 模块 2 TIP | `尚未完全吸收的「胜利范式」` | `尚未完成剖析的例题` |
| 模块 6 TIP | `已攻克的「胜利范式」功勋墙` | `已建立的解法模型库` |
| 模块 9 TIP | `「肌肉记忆」，反复训练，方能克敌制胜` | `关键解题套路，多练才能熟练` |
| 模块 10 TIP | `知识体系中的「皇冠明珠」` | `知识体系中的核心难点` |
| 顶部注释 | `大天使版 (V20 - Final)` 等 | 删除或简化为版本号与作者 |

### 验收标准
- [ ] 全文中不再出现"胜利范式"、"功勋墙"、"克敌制胜"、"皇冠明珠"
- [ ] 渲染后视觉上不再有"中二"感
- [ ] 功能完全不变

---

## 阶段二：性能优化（减少 Dataview 扫描开销）

### 当前问题
`dv.pages()` 及相关过滤被调用 **6 次以上**，Vault 越大越卡：

1. `dv.pages(mathFolder)` — 题目/例题
2. `dv.pages()` — 知识枢纽（模块 7）
3. `dv.pages()` — 知识枢纽（模块 8）
4. `dv.pages()` — 战术卡片（模块 9）
5. `dv.pages()` — 深度解析（模块 10）

### 优化方案
**只扫描 2 次**，其余全部做内存过滤：

```javascript
const allPages = dv.pages();
const mathPages = allPages.where(p => p.file.path.startsWith(CONFIG.mathNotesFolder));
```

然后所有模块从这两个集合里二次筛选。

### 验收标准
- [ ] 代码中仅出现 2 次 `dv.pages()` 调用
- [ ] 仪表盘在 Obsidian 中打开时无明显白屏/卡顿
- [ ] 所有模块数据与优化前完全一致

---

## 阶段三：代码结构与容错性（模块化重构）

### 当前问题
1. `renderKaoyanDashboard()` 单函数超过 120 行，10 个模块全部耦合
2. 某个模块抛异常会导致整个仪表盘崩溃
3. 大量单行代码超过 200 字符，可读性极差

### 优化方案

#### 3.1 按模块拆分为独立渲染函数
```javascript
function renderHealthBar(mistakeCount) { ... }
function renderDataCards(mistakeCount, pendingExemplarCount, reviewToday, staleItems) { ... }
function renderModule1_ChapterMastery(allProblems) { ... }
function renderModule2_PendingExemplars(pendingExemplars) { ... }
// ... 以此类推
```

#### 3.2 每个模块内部加 try-catch 隔离
```javascript
function safeRender(name, fn, ...args) {
  try {
    fn(...args);
  } catch (e) {
    dv.paragraph(`🔴 **${name} 渲染失败**: ${e.message}`);
  }
}
```

#### 3.3 格式化长行
- 所有链式调用 `.where().map().sort()` 每步换行
- 对象字面量、数组字面量超出 100 字符时换行缩进

### 验收标准
- [ ] 主函数 `renderKaoyanDashboard()` 行数 <= 40 行
- [ ] 每个模块有独立函数
- [ ] 单模块异常不影响其他模块显示
- [ ] 无超过 120 字符的单行代码

---

## 阶段四：数据语义修正（遗忘预警逻辑）

### 当前问题
遗忘预警使用 `p.file.mtime`（文件系统修改时间），而非"上次复习时间"。

```javascript
const mt = p.file.mtime;
return mt && (today - mt > dv.duration(CONFIG.staleAlertDays + " days"));
```

这会导致：
- Obsidian 自动保存会刷新 mtime，让"遗忘预警"永远为空
- 无法真实反映"多久没复习"

### 优化方案
改为优先读取 frontmatter 中的复习日期字段：

```javascript
function getLastReviewDate(p) {
  return dv.date(p.last_reviewed || p.review_date);
}

const lastReviewed = getLastReviewDate(p);
return lastReviewed && (today - lastReviewed > dv.duration(CONFIG.staleAlertDays + " days"));
```

### 边界处理
- 如果 `last_reviewed` 和 `review_date` 都为空，则回退到 `p.file.mtime`
- 在卡片或 TIP 中提示"无复习日期记录的条目将按文件修改时间估算"

### 验收标准
- [ ] `staleMistakes` / `staleExemplars` 基于 `last_reviewed` / `review_date` 计算
- [ ] 日期为空时有合理 fallback
- [ ] 与优化前相比，遗忘预警列表数据更准确

---

## 阶段五：UX 细节与空状态补全

### 当前问题
1. 模块 1（章节掌握度）和模块 3（错题本）在空数据时只显示标题，下面一片空白
2. 用户不知道"为什么没有内容"
3. 数据卡片是纯展示，无交互

### 优化方案

#### 5.1 统一空状态提示
每个模块在数据为空时显示友好提示：

```javascript
if (masteryByChapter.length === 0) {
  dv.paragraph("> [!INFO] 暂无章节数据。请检查 `1. Math` 下的笔记是否包含 `chapter` 字段。");
  return;
}
```

| 模块 | 空状态文案 |
|------|-----------|
| 模块 1 | 暂无章节数据。请检查 `chapter` 字段。 |
| 模块 2 | 暂无待剖析例题。 |
| 模块 3 | 暂无错题记录。🎉 |
| 模块 4 | 今日无到期复习任务。 |
| 模块 5 | 暂无超过 30 天未复习的条目。 |
| 模块 6 | 暂无已建模的解法。 |
| 模块 7 | 所有核心方法均已熟练。 |
| 模块 8 | 暂无高频考点方法论数据。 |
| 模块 9 | 所有战术卡片已通过实战检验。 |
| 模块 10 | 所有深度解析已完成精炼。 |

#### 5.2 数据卡片增加可点击链接（可选）
让卡片支持点击跳转：
- `🚨 当前总错题` → 跳转到错题本聚合列表（或一个预筛选的 Dataview 查询页面）
- `⏰ 今日待复习` → 同上

实现方式：用 `dv.fileLink()` 或 Obsidian URI。如果复杂度较高，可放到 P3。

### 验收标准
- [ ] 10 个模块都有明确的空状态提示
- [ ] 用户不会因为"空白"而困惑
- [ ] （可选）数据卡片至少有一个可点击跳转

---

## 执行顺序与版本规划

| 阶段 | 预计耗时 | 依赖 | 建议版本 |
|------|----------|------|----------|
| 阶段一 文案 | ~10 min | 无 | v26.2 补丁 |
| 阶段二 性能 | ~15 min | 无 | v26.2 补丁 |
| 阶段四 数据语义 | ~10 min | 无 | v26.2 补丁 |
| 阶段三 模块化 | ~30 min | 阶段二 | v26.2 补丁 |
| 阶段五 UX | ~15 min | 阶段三 | v26.2 补丁 |

> 建议将阶段一、二、四合并为一次提交（低风险高价值）。阶段三、五可单独提交，便于回滚。

---

## 附录：当前代码中已知的长行代码定位

- **L93**: `chapterDisplay` 内联 HTML，约 250 字符
- **L111**: `mistakesByIndividualTopic` 单行 forEach，约 280 字符
- **L159**: 高频考点方法论 `hubData` map 链式调用，约 300 字符

以上三行是阶段三重构的重点目标。

---

*方案制定日期: 2026-04-17*  
*状态: 待执行*
