# Phase 追踪表

**最后更新**: 2026-04-16 11:00

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

---

## 下一步（待办清单）

见 [`05-KNOWN-ISSUES.md`](./05-KNOWN-ISSUES.md)、[`06-AUDIT-2026-04-16.md`](./06-AUDIT-2026-04-16.md) 及 [`99-NEXT-SESSION.md`](./99-NEXT-SESSION.md)。

主要方向：
1. **用户验证**：等待第一位学弟学妹 Fork 并在 Obsidian 中成功打开母舰
2. **内容持续精修**：对剩余 AI 味较重的笔记进行第二轮人工审校
3. **社交媒体矩阵**：通过公众号/B站/小红书发布使用教程和招募
4. **第二批舰长培养**：27 届上岸后邀请加入 `Captains` Team

---

*「继往开来，一研为定。」*
