# 发现: 核心文档模板草稿

**日期**: 2026-04-15  
**类型**: 文档模板

---

## 摘要

为 `qiusuo-kaoyan/notes` 母舰仓库起草三份核心文档：`README.md`、`LICENSE`、`CONTRIBUTING.md`。这些文档是舰长舰队对外的第一印象，也是传承机制的制度基石。

---

## 1. README.md 草稿（母舰版）

```markdown
# 🚀 求索号考研笔记母舰

> **继往开来，一研为定。**
>
> *「路漫漫其修远兮，吾将上下而求索。」*
>
> 这是一艘由历代考研舰长共同维护的开源知识母舰，
> 渡所有考研学子上岸的船。
> 每一代上岸的舰长，都会将自己的笔记、方法、教训汇入母舰，
> 让后来的探索者少踩一些坑，多走一些直路。

---

## 🌌 舰船结构

```
📦 qiusuo-kaoyan/notes
├── 0. 指挥中心/          # 复习导航、看板、工具箱
├── 00. 总框架/           # 规划、方法论
├── 1. Math/              # 数学：基础→强化→真题→冲刺
├── 2. 专业课/            # 专业课（上交 816 自动控制原理）
├── 3. English/           # 英语：方法论、语料、文化补充
├── 4. 每日一题/          # 数学/专业课每日训练
├── 5. 考研日记/          # 备考心路历程（已脱敏）
├── 6. 考研方法论/        # 时间管理、心流、复盘
├── 7. 政治/              # 政治答题方法论
├── Templates/            # Obsidian 模板（PZ 系列）
└── Scripts/              # 辅助脚本
```

## 🛠️ 上船指南

1. **Fork 本仓库** 到你的 GitHub 账号
2. **克隆到本地**：`git clone https://github.com/你的用户名/notes.git`
3. **用 Obsidian 打开** `notes` 文件夹
4. 安装推荐的社区插件（Templater、Dataview、Math Booster 等）
5. 开始你的考研航行！

更详细的图文教程见 👉 [onboarding 仓库](https://github.com/qiusuo-kaoyan/onboarding)

## 🔄 舰长传承机制

```
你 (Gen-N)  fork 母舰
    → 在 Obsidian 中学习、批注、补充
    → 提交 Pull Request
    → 资深舰长 Review 后合并
    → 母舰升级，造福下一代
```

每一位被合并过 PR 的学弟学妹，都会被邀请加入 **Contributor**；
成功上岸并持续贡献者，晋升为 **Captain (Gen-N)**，获得母舰的 Maintainer 权限。

## 👨‍✈️ 舰长名录

### Gen-1 (26届)
- [@第一代舰长](https://github.com/你的用户名) — 启航者

### Gen-2 (27届)
- *虚位以待*

### Gen-3 (28届)
- *虚位以待*

## 📜 协议与免责

本仓库采用 **CC BY-NC-SA 4.0** 协议：
- **BY** — 署名：转载/修改时必须标注原作者和母舰链接
- **NC** — 非商业：禁止任何机构或个人将本内容用于商业盈利
- **SA** — 相同方式共享：基于本内容的修改也必须开源分享

> ⚠️ **免责**：本笔记为个人学习整理，不保证 100% 正确，也不构成任何考研辅导承诺。请结合自身情况使用。

## 🌟 参与贡献

无论你修正了一个错别字，还是补充了一整章例题，母舰都欢迎你的到来。

详见 [CONTRIBUTING.md](./CONTRIBUTING.md)

---

*「我们的征途是星辰大海，也是那张录取通知书。」*
```

---

## 2. LICENSE 草稿（CC BY-NC-SA 4.0）

```markdown
# 知识共享许可协议

## Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International

本作品采用 **知识共享署名-非商业性使用-相同方式共享 4.0 国际许可协议** 进行许可。

英文全文: https://creativecommons.org/licenses/by-nc-sa/4.0/legalcode
中文摘要: https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh

---

## 你可以自由：

- **共享** — 在任何媒介以任何形式复制、发行本作品
- **演绎** — 修改、转换或以本作品为基础进行创作

## 惟须遵守下列条件：

- **署名** — 你必须给出适当的署名，提供指向本许可协议的链接，同时标明是否（对原始作品）作了修改。
- **非商业性使用** — 你不得将本作品用于商业目的。
- **相同方式共享** — 如果你再混合、转换或者基于本作品进行创作，你必须基于与原先许可协议相同的许可协议分发你的贡献作品。

## 特别声明：

- 本仓库中的部分图片和引用内容可能来源于第三方，版权归原作者所有。
- 本笔记为个人学习整理，不保证内容的绝对正确性，使用者需自行判断。
```

---

## 3. CONTRIBUTING.md 草稿（完整版）

```markdown
# 贡献指南：如何成为一名舰长

感谢你对「求索号」感兴趣！本指南将手把手教你如何 Fork 母舰、本地编辑、并最终通过 Pull Request 将你的智慧汇入母舰。

---

## 🚦 开始前准备

### 1. 注册 GitHub 账号
如果你还没有 GitHub 账号，前往 https://github.com/signup 注册。

### 2. 安装 Git
- Windows: 下载 [Git for Windows](https://git-scm.com/download/win)
- macOS: `brew install git`
- 验证: 打开终端，输入 `git --version`

### 3. 安装 Obsidian
前往 https://obsidian.md 下载并安装 Obsidian。这是我们编写和阅读笔记的主要工具。

---

## 🍴 Step 1: Fork 母舰

1. 打开 https://github.com/qiusuo-kaoyan/notes
2. 点击页面右上角的 **Fork** 按钮
3. 等待几秒，你会被重定向到自己的 Fork 页面（如 `https://github.com/你的用户名/notes`）

---

## 💻 Step 2: 克隆到本地

打开终端（Windows 用 Git Bash），运行：

```bash
git clone https://github.com/你的用户名/notes.git
cd notes
```

如果你希望用 SSH（更高级），可以配置 SSH Key 后使用：
```bash
git clone git@github.com:你的用户名/notes.git
```

---

## 📝 Step 3: 用 Obsidian 打开

1. 打开 Obsidian
2. 点击左下角的 **"打开"** → **"打开本地仓库"**
3. 选择你刚才克隆的 `notes` 文件夹
4. 如果出现插件加载提示，选择 **"启用社区插件"**

### 推荐安装的插件
母舰大量使用了以下插件，建议安装：
- **Dataview** — 动态看板、查询
- **Templater** — 模板自动化
- **Math Booster** — 公式增强
- **Excalidraw** — 手绘图解
- **Kanban** — 任务看板

> 插件文件不在本仓库中（体积太大），请通过 Obsidian 社区插件市场搜索安装。安装后，配置会自动从 `.obsidian/community-plugins.json` 中读取。

---

## ✏️ Step 4: 编辑与批注

### 你可以做的贡献

- ✅ 修正错别字、公式错误
- ✅ 补充例题、解法、图解
- ✅ 添加 inline 批注或独立批注文件
- ✅ 优化目录结构或导航链接
- ✅ 更新 frontmatter 元数据

### 你不应该做的事

- ❌ 上传名师原版 PDF/讲义（版权风险）
- ❌ 包含高度个人隐私（报考信息、真实姓名电话、具体学校老师评价、敏感人际关系等）
  > 注：母舰中的日记/周记已经过脱敏处理，保留了情绪波动和备考心态的参考价值。
- ❌ 直接删除第一代舰长的原文（除非明显错误，请用批注说明）
- ❌ 引入非考研相关的无关内容

### 批注规范

**Inline 批注**（适用于 100 字以内的精华补充）：
```markdown
> 🚀 **Gen-2 舰长批注** (@你的GitHub用户名): 
> 这里补充一个快速技巧：...
```

**独立文件批注**（适用于大量补充或不同观点）：
在原文同级目录创建 `{原文名}-批注-gen2.md`。

详见母舰中的 `Templates/舰长批注模板.md`。

---

## 📤 Step 5: 提交更改

### 5.1 查看更改
```bash
git status
```

### 5.2 添加更改
```bash
git add .
```

### 5.3 书写提交信息
```bash
git commit -m "gen2: Math/数列极限 - 补充递推法示例"
```

提交信息规范：
```
gen{N}: {学科}/{章节} - {描述}
```

### 5.4 推送到你的 Fork
```bash
git push origin main
```

---

## 🔀 Step 6: 发起 Pull Request (PR)

1. 打开你的 Fork 页面 `https://github.com/你的用户名/notes`
2. 点击 **"Contribute"** → **"Open pull request"**
3. 填写 PR 信息：

**标题示例**：
```
gen2: Math/数列极限 - 补充递推法示例与易错点
```

**描述模板**：
```markdown
## 舰长信息
- **代际**: Gen-2
- **舰长**: @你的GitHub用户名
- **学科**: Math
- **章节**: 第 2 讲 - 数列极限

## 变更说明
- 补充了递推数列的"先斩后奏"技巧
- 添加了一道 2026 年真题作为例题
- 修正了原文中一个符号错误

## 检查清单
- [ ] 已更新 frontmatter 中的 `generation` 字段（如新建文件）
- [ ] 未包含个人隐私信息
- [ ] 未上传版权敏感 PDF
```

4. 点击 **"Create pull request"**
5. 等待资深舰长 Review，合并后你就正式成为 Contributor 了！

---

## 🏆 晋升路径

| 身份 | 条件 | 权限 |
|------|------|------|
| **Reader** | 任何人 | 阅读、Fork |
| **Contributor** | 1 个以上被合并的 PR | 被邀请加入 Org Members |
| **Captain Gen-N** | 成功上岸 + 3 个以上被合并的 PR | Maintainer 权限，Review PR，发布 Release |
| **Owner** | 第一代舰长 + 核心继任者 | Admin 权限，管理 Org |

---

## ❓ 常见问题

**Q: 我不会用 Git，可以只下载 ZIP 吗？**  
A: 当然可以。点击仓库首页的 **"Code" → "Download ZIP"** 即可。但如果你想贡献内容，建议花 30 分钟学习 Git 基础。

**Q: 我的观点和原文不一样，可以改吗？**  
A: 不要直接改原文，请用「独立文件批注」的形式保留你的观点。母舰鼓励多元视角。

**Q: 我可以把笔记用于商业考研辅导吗？**  
A: **不可以。** 本仓库采用 CC BY-NC-SA 4.0 协议，禁止商业使用。

**Q: 我想加入 Captain，该怎么做？**  
A: 努力备考，持续向母舰贡献优质 PR，上岸后联系现有 Captain 申请即可。

---

## 📞 联系我们

- 有问题？在 [notes 仓库](https://github.com/qiusuo-kaoyan/notes/discussions) 发起 Discussion
- 想私聊？给任意 Captain 发 GitHub Issue（我们会定期检查）

---

*感谢你愿意为后来者点亮一盏灯。*
```

---

## 4. 舰长批注模板（供 Obsidian 使用）

### Inline 批注模板

```markdown
> 🚀 **Gen-{{generation}} 舰长批注** (@{{captain_username}}): 
> {{批注内容}}
```

### 独立文件批注模板

```markdown
---
generation: {{generation}}
captain: "{{captain_name}}"
subject: {{subject}}
annotation-of: "{{original_file}}"
annotation-type: ["{{type1}}", "{{type2}}"]
date: {{date}}
---

# {{original_title_without_ext}} —— Gen-{{generation}} 舰长批注

> 🚀 **批注来源**: [[{{original_file_without_ext}}]]
> 🚀 **批注舰长**: @{{captain_username}} (Gen-{{generation}})
> 🚀 **批注日期**: {{date}}

---

## 补充 1: {{标题}}

{{内容}}

---

## 与原文观点的差异说明

{{如有不同观点，在此说明}}
```

---

## 影响

这三份文档构成了舰长舰队的「对外窗口」和「制度基石」：
- **README** 解决「这是什么」和「为什么参与」
- **LICENSE** 解决「权利和义务」
- **CONTRIBUTING** 解决「怎么参与」

建议 Phase 3 时，将这些文档直接放入 `notes` 仓库根目录。
