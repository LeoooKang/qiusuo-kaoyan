# Brainstorming: Phase 1 - 实施方案草稿

**日期**: 2026-04-15  
**参与者**: Leo + AI  
**Phase**: 1  
**状态**: 🟡 草稿（等待Leo确认）

---

## 🎯 Phase 目标

将「方案 C：舰长舰队」从概念转化为一份**可执行的实施方案草稿**，涵盖 GitHub Org 架构、舰长传承工作流、笔记元数据标准、核心文档模板。

---

## 📐 范围界定

**包含**:
- GitHub Org 架构与仓库设计
- 代际传承工作流（Fork → PR → Release）
- 笔记元数据标准（frontmatter）
- 舰长批注模板
- README / LICENSE / CONTRIBUTING 结构草稿

**不包含**:
- 实际的 GitHub 操作
- 实际的笔记清洗/推送

---

## 🔧 技术方案（初步）

### 方案 A：轻量级 Org（推荐）
- **Org 名称**: `qiusuo-kaoyan`
- **仓库列表**: 2-3 个核心仓库（notes, onboarding, website-optional）
- **团队**: `Captains`（历代舰长）+ `Core`（核心维护者）
- **Release**: 每年一次，命名 `v2025.1-gen1`

### 方案 B：完整舰队
- 在方案 A 基础上增加 `discussions`, `tools`, `captain-logs-private`
- 更重的维护负担，但扩展性更强

**AI 推荐**: 方案 A 起步，未来可自然扩展为方案 B。

---

## ❓ 待确认问题（需要你的拍板）

### 问题 1：Org 名称
- 候选 A：`qiusuo-kaoyan`（拼音，简洁，国际化）
- 候选 B：`kaoyan-qiusuo`（更符合中文语序）
- 候选 C：由你提供一个新名字

### 问题 2：核心仓库命名
- 候选 A：`notes`（简洁，聚焦内容）
- 候选 B：`qiusuo-notes`（带品牌前缀）
- 候选 C：`vault`（强调 Obsidian Vault 属性）

### 问题 3：Release 策略
- 候选 A：**学年制 Release**（每年一版，如 `v2025.1` 代表 2025 考研季第一代舰长完整版）
- 候选 B：**代际制 Release**（每代舰长上岸后打一版 Tag，如 `gen-1`, `gen-2`）
- 候选 C：两者结合（Tag 用 `gen-1`，Release 说明用学年）

### 问题 4：舰长批注的形式
- 候选 A：**inline 批注**（在原文下方用 `---` 分隔，插入 `> 🚀 第二代舰长批注：...`）
- 候选 B：**独立文件**（在同级目录创建 `xxx-批注-gen2.md`，原文不动）
- 候选 C：两者结合（重要批注 inline，大量补充用独立文件）

### 问题 5：元数据标准范围
- 候选 A：**严格标准**（每篇笔记必须带 `generation`, `captain`, `subject`, `stage`, `source`）
- 候选 B：**宽松标准**（只要求知识类笔记带 `generation` 和 `subject`，日记/随笔不带）
- 候选 C：**渐进式**（第一代先写好自己的，第二代在上传 PR 时补充元数据）

### 问题 6：CONTRIBUTING 的粒度
- 候选 A：**极简版**（一张图 + 三步说明：Fork → Obsidian 打开 → PR）
- 候选 B：**完整版**（包含 Git 安装、Obsidian 插件配置、PR 规范、Review 流程）
- 候选 C：**分层版**（README 里放极简版，CONTRIBUTING.md 里放完整版）

---

## ⚠️ 已知风险

| 风险 | 影响 | 缓解措施 |
|------|------|----------|
| 学弟学妹不会用 GitHub | 传承链断裂 | `onboarding` 仓库写傻瓜级图文教程 |
| 批注过多导致原文淹没 | 可读性下降 | 独立文件批注为主，inline 仅限精华 |
| 多代批注观点冲突 | 知识质量不稳定 | 元数据强制标注 `generation` 和 `captain`，读者自行判断 |
| Leo毕业后无暇维护 | 母舰变成遗迹 | 培养第二代舰长成为 Maintainer，移交权限 |

---

## ⚡ Leo偏好（本次 Phase）

*待Leo确认后填充*

---

*请你对上面的 6 个问题给出倾向，或提出新的想法。确认后，我将把这些偏好定稿为 `02-PREFERENCES.md`，然后开始撰写完整的实施方案草稿。*
