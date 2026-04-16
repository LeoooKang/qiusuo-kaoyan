# Phase 4 当前状态

**Phase**: Phase 4 - 启航推送  
**最后更新**: 2026-04-16 10:00

---

## 进度

| 阶段 | 状态 | 完成时间 |
|------|------|----------|
| 笔记库推送至 `qiusuo-kaoyan/notes` | ✅ 完成 | 2026-04-15 |
| 创建首个 GitHub Release `v26.0` | ✅ 完成 | 2026-04-15 |
| 准备多平台招募文案 | ✅ 完成 | 2026-04-15 |
| 修复硬编码路径与脚本清理 | ✅ 完成 | 2026-04-15 |
| 推送文档补丁 `v26.1` | ✅ 完成 | 2026-04-15 |
| 创建 Release `v26.1` | ✅ 完成 | 2026-04-16 |
| 重写 onboarding 上船指南 | ✅ 完成 | 2026-04-16 |
| 移除 `workspace-mobile.json` 追踪 | ✅ 完成 | 2026-04-16 |
| 排查移出日记的死链 | ✅ 完成 | 2026-04-16 |
| 建立全局索引页 | ✅ 完成 | 2026-04-16 |
| 创建 Org Profile README | ✅ 完成 | 2026-04-16 |

---

## 已完成

### 🚀 母舰正式启航

- **知识母舰**: [github.com/qiusuo-kaoyan/notes](https://github.com/qiusuo-kaoyan/notes)
  - 2774 个文件，约 1.63 GiB 清洗后笔记内容
  - 包含 README、LICENSE (CC BY-NC-SA 4.0)、CONTRIBUTING
  - `main` 分支受保护，PR 需至少 1 个 Review

- **上船指南**: [github.com/qiusuo-kaoyan/onboarding](https://github.com/qiusuo-kaoyan/onboarding)
  - 已重写为完整的零基础快速上船指南（含 Fork→Clone→Open 三步法、插件安装说明、FAQ）

- **Org 主页**: [github.com/qiusuo-kaoyan](https://github.com/qiusuo-kaoyan)
  - 通过 `.github/profile/README.md` 展示项目定位、核心舰队和快速链接
  - 待手动 Pin `notes` 和 `onboarding` 仓库到主页

- **首个 Release**: [v26.0](https://github.com/qiusuo-kaoyan/notes/releases/tag/v26.0)
  - 舰船升级日志
  - 舰长名录（Gen-1: @LeoooKang）
  - 已知航线问题声明

- **文档补丁 v26.1**: [Release v26.1](https://github.com/qiusuo-kaoyan/notes/releases/tag/v26.1)
  - 修复 `kaoyanReview.js` 硬编码路径为 `"1. Math"`
  - 删除冗余 `kaoyanReview-2.js`
  - 修正第 27 周周记 DataviewJS 路径
  - 替换工具箱文章中的本地 Windows 绝对路径
  - 排除 `.obsidian/workspace.json` 和 `.obsidian/workspace-mobile.json` 出 Git 追踪
  - Leo 完成首轮 AI 内容筛查与精修（English 作文 DB、数学武器库、周复盘等）
  - 修复 README 中第一代舰长链接（`你的用户名` → `LeoooKang`）

### 📢 招募素材

已准备 4 个版本的招募文案，存放于 `phases/Phase-4-launch/recruitment-copy.md`：
1. 朋友圈/QQ空间（情感向）
2. 考研群/论坛（实用向）
3. 小红书/知乎（标题党+分段清晰）
4. GitHub Discussion（正式向）

> **当前策略**：Leo 优先通过个人社交媒体矩阵（公众号/B站/小红书/博客）发视频图文教程，GitHub 端招募不急于一时。

---

## 项目成功标准核验

| 标准 | 状态 |
|------|------|
| 核心知识库成功推送至 GitHub Public 仓库，可被 Fork | ✅ 完成 |
| 仓库包含清晰的 README、LICENSE、CONTRIBUTING 指南 | ✅ 完成 |
| 个人隐私和版权敏感内容零泄漏 | ✅ 完成 |
| 有至少一个学弟学妹成功 Fork 并在本地 Obsidian 中正常打开 | ⏳ 待验证（需发布后观察） |
| 建立 GitHub Org，具备长期运营的基础设施 | ✅ 完成 |

---

## 遗留任务

- **验证标准 #4**: 等待第一位学弟学妹实际 Fork 并在 Obsidian 中成功打开母舰
- **手动 Pin 仓库**: 在 [github.com/qiusuo-kaoyan](https://github.com/qiusuo-kaoyan) 主页手动固定 `notes` 和 `onboarding`（GitHub API 不支持自动 Pin）
- **onboarding 进阶**: README 快速指南已就位，待补充图文分步截图/视频教程
- **第二批舰长培养**: 27 届上岸后邀请加入 `Captains` Team
- **ISSUE-001**: 详见 [`05-KNOWN-ISSUES.md`](../../05-KNOWN-ISSUES.md)。Leo 已完成第一轮 AI 内容筛查与精修，母舰已同步更新至 v26.1。高隐私日记移出后未发现断裂的引用链接。

---

## 下一步

Leo 现在可以随时：
1. 在社交媒体/考研群发布招募文案或教程视频
2. 邀请 1-2 位已上岸的朋友加入 Org 作为 `Owners` 备份
3. 根据实际反馈，迭代 onboarding 仓库的上船指南
4. 对剩余 AI 味较重的笔记进行第二轮精修

---

*「继往开来，一研为定。」*
*求索号，正式启航。*
