# Phase 追踪表

**最后更新**: 2026-04-19

---

## 概览

| Phase | 名称 | 状态 | 触发日期 | 完成日期 | 备注 |
|-------|------|------|----------|----------|------|
| 0 | 初始化 | ✅ 完成 | 2026-04-15 | 2026-04-15 | 创建项目工作空间，确认方案 C |
| 1 | 实施方案草稿 | ✅ 完成 | 2026-04-15 | 2026-04-15 | 起草舰长舰队详细实施方案 |
| 2 | GitHub 母舰建设 | ✅ 完成 | 2026-04-15 | 2026-04-15 | 创建 Org + 仓库 + 文档 |
| 3 | 笔记库最终清洗 | ✅ 完成 | 2026-04-15 | 2026-04-15 | 移出日记，生成 README/LICENSE |
| 4 | 启航推送 | ✅ 完成 | 2026-04-15 | 2026-04-15 | 首次推送，v26.0 发布 |
| 4.1 | 文档补丁 v26.1 | ✅ 完成 | 2026-04-15 | 2026-04-16 | 修复硬编码路径 + AI 内容精修 |
| 4.2 | Org 主页与基础设施完善 | ✅ 完成 | 2026-04-16 | 2026-04-16 | Org Profile README + onboarding 重写 + 全局索引页 |
| 4.3 | 内容精修第二轮（去 AI 味） | ✅ 完成 | 2026-04-17 | 2026-04-18 | Vault 全量清理首席架构师等 AI 腔调 |
| 4.4 | 插件体系精简 + 文档透明化 | ✅ 完成 | 2026-04-18 | 2026-04-18 | 插件 29→16 + 安全声明 |
| 4.5 | Release v26.3 | ✅ 完成 | 2026-04-18 | 2026-04-18 | GitHub Release + 网盘压缩包 |
| 4.6 | 离线插件包发行 | ✅ 完成 | 2026-04-19 | 2026-04-19 | 15 个插件离线包 + 安装脚本 + UX 优化 |

---

## Phase 里程碑

### Phase 0 - 初始化
- [x] 2026-04-15: Leo确认选择方案 C（舰长舰队 / GitHub Organization）
- [x] 2026-04-15: 创建 `temp-scripts/qiusuo-kaoyan/` 项目工作空间
- [x] 2026-04-15: 完成 Phase 0 文档初始化
- [x] 2026-04-15: Leo确认进入 Phase 1

### Phase 1 - 实施方案草稿
- [x] 起草 GitHub Org 架构设计
- [x] 明确「舰长传承」工作流（Fork → PR → Release）
- [x] 设计元数据标准（frontmatter: `generation`, `captain`, `subject`）
- [x] 设计「舰长批注」模板
- [x] 确定仓库命名、README 结构、LICENSE 文本
- [x] 评估压力测试场景

### Phase 2 - GitHub 母舰建设
- [x] 创建 GitHub Organization `qiusuo-kaoyan`
- [x] 创建核心仓库 `notes`
- [x] 创建辅助仓库 `onboarding`
- [x] 配置 GitHub Pages（可选）
- [x] 设置 Teams/Captain Gen-X 徽章
- [x] 创建 Organization Profile README（`.github` 仓库）

### Phase 3 - 笔记库最终清洗
- [x] 将 `5. 考研日记/` 物理移出主仓库（高隐私内容已脱敏）
- [x] 生成 `README.md`（母舰版）
- [x] 生成 `LICENSE`（CC BY-NC-SA 4.0）
- [x] 生成 `CONTRIBUTING.md`
- [x] 提交并推送

### Phase 4 - 启航推送
- [x] 执行 `git push -u origin main`
- [x] 创建首个 GitHub Release `v26.0`
- [x] 在社交媒体/社群发布招募（文案已备妥）

### Phase 4.1 - 文档补丁 v26.1
- [x] 修复 Vault 中硬编码路径（`kaoyanReview.js`、第 27 周周记、工具箱文章）
- [x] 删除冗余脚本 `kaoyanReview-2.js`，保留数学单一看板
- [x] 排除 `.obsidian/workspace.json` / `workspace-mobile.json` 出仓库
- [x] Leo 首轮筛查并精修明显未修改的 AI 生成内容
- [x] 推送补丁并创建 Release `v26.1`

### Phase 4.2 - Org 主页与基础设施完善
- [x] 重写 `onboarding/README.md` 为零基础完整上船指南
- [x] 创建 `notes` 仓库全局索引页 `0. 指挥中心/🗺️ 求索号快速导航.md`
- [x] 创建 `.github` 仓库并写入 Organization Profile README
- [x] 排查移出日记的死链（未发现断裂引用）

### Phase 4.3 - 内容精修第二轮（去 AI 味）
- [x] `0. 指挥中心` 批量去 AI 味（标题 + 语气收敛）2026-04-17
- [x] `1. Math` 批量去 AI 味（20 个文件）2026-04-17
- [x] `2. 专业课` 批量去 AI 味（10 个文件）2026-04-17
- [x] `3. English` 批量去 AI 味（2 个文件）2026-04-17
- [x] `5. 考研日记` 批量去 AI 味（83 个文件）2026-04-18
- [x] `kaoyanReview-2.js` 仪表盘文案去 AI 味 + 工程优化 2026-04-17
- [x] 5 个核心 PZ 模板默认输出去 AI 味 2026-04-17

### Phase 4.4 - 插件体系精简 + 文档透明化
- [x] 手动卸载 10 个冗余/敏感插件（含 remotely-save 含云同步凭证）2026-04-18
- [x] 启用 Notebook Navigator 加速文件管理 2026-04-18
- [x] 插件启用列表从 26 个精简至 16 个 2026-04-18
- [x] 新增 README「插件与配置说明」安全声明章节 2026-04-18
- [x] 更新 CONTRIBUTING.md 插件推荐列表与实际配置对齐 2026-04-18

### Phase 4.5 - Release v26.3
- [x] 创建 GitHub Release `v26.3`
- [x] 生成本地压缩包供网盘分享（2821 文件 / 1.8GB）

### Phase 4.6 - 离线插件包发行
- [x] 整理 15 个开源插件（排除商业 Markmind）2026-04-19
- [x] 创建 `obsidian-plugins/` 离线插件目录 2026-04-19
- [x] 编写 `PLUGINS.md`（完整清单 + 作者 GitHub 归属 + 安装说明）2026-04-19
- [x] 编写 `install-plugins.ps1`（Windows 一键安装，含自动检测 Vault 路径）2026-04-19
- [x] 编写 `install-plugins.sh`（macOS/Linux 一键安装，含自动检测）2026-04-19
- [x] 编写 `package-release.sh`（发行版打包工具）2026-04-19
- [x] 编写 `README-插件安装指南.md`（解压后第一眼可见的快速入门）2026-04-19
- [x] 推送插件包到母舰仓库 `qiusuo-kaoyan/notes` 2026-04-19
- [x] 发布 Release `v26.4` 含插件包 asset（3.3MB）2026-04-19
- [x] 优化安装脚本 UX（路径验证、错误提示、FAQ）2026-04-19
- [x] 在 `🗺️ 求索号快速导航.md` 中添加官网预留说明 2026-04-19

---

## 下一步（待办清单）

见 [`05-KNOWN-ISSUES.md`](./05-KNOWN-ISSUES.md)、[`06-AUDIT-2026-04-16.md`](./06-AUDIT-2026-04-16.md) 及 [`99-NEXT-SESSION.md`](./99-NEXT-SESSION.md)。

主要方向：
1. **朋友圈试用**：将压缩包或 GitHub Release 分享给身边考研的朋友，收集第一手反馈
2. **内容持续精修**：继续扫描 `综上所述`、`总而言之` 等残余关键词
3. **社交媒体矩阵**：通过公众号/B站/小红书发布使用教程和招募
4. **第二批舰长培养**：27 届上岸后邀请加入 `Captains` Team

---

*「继往开来，一研为定。」*
