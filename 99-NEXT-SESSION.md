# 下次会话快速启动指南

**最后更新**: 2026-04-17

---

## 项目当前状态（一句话）

「求索号」考研舰队基础设施已完备，GitHub Org 成员权限已规范为 Read，核心仓库已 Pin 到主页。内容精修进入第二轮：5 个核心 PZ 模板已去 AI 味，`kaoyanReview-2.js` 数学仪表盘已修复并优化（性能提升 + 遗忘预警逻辑修正）。当前处于**内容持续精修 + 仪表盘优化收尾**阶段。

---

## 关键链接

| 资源 | 地址 |
|------|------|
| **Org 主页** | https://github.com/qiusuo-kaoyan |
| 母舰仓库 | https://github.com/qiusuo-kaoyan/notes |
| 上船指南 | https://github.com/qiusuo-kaoyan/onboarding |
| 最新 Release | https://github.com/qiusuo-kaoyan/notes/releases/latest |
| 母舰全局索引 | `0. 指挥中心/🗺️ 求索号快速导航.md` |
| 本地 Vault | `D:\Obsidian Repo\💯一研为定` |
| 项目工作空间 | `D:\Search Space\temp-scripts\qiusuo-kaoyan` |

---

## 📌 2026-04-17 今日进展

### 已完成
1. ✅ **GitHub Org 权限规范**：成员默认权限设为 `Read`
2. ✅ **仓库 Pin 完成**：`notes` 和 `onboarding` 已固定到 Org 主页
3. ✅ **数学仪表盘修复**：恢复误删的 `kaoyanReview-2.js`，修复中文引号导致的 `SyntaxError`
4. ✅ **仪表盘工程优化**：`dv.pages()` 扫描从 6 次降至 2 次；文案去 AI 味；遗忘预警逻辑从 `mtime` 修正为 `last_reviewed/review_date`
5. ✅ **模板去 AI 味**：修改 5 个核心 PZ 模板（PZ5 日记、PZ6 周复盘、PZ9 AI 报告、PZ10 高数/专业课真题），删除默认输出中的"首席架构师"、"全息战略"等 AI 腔
6. ✅ **历史文章精修**：推送 `09-15分析报告.md`、`09-15错题报告.md`、第 32 周报告的去 AI 味补丁
7. ✅ **工程文档**：编写 `07-KAOYANREVIEW2-OPTIMIZATION-PLAN.md`

### 下午待续
- [ ] 继续扫描 Vault 中剩余含 `首席架构师` 的历史文章
- [ ] 完成 `kaoyanReview-2.js` 阶段三（模块化重构）+ 阶段五（UX 空状态）优化
- [ ] 考虑是否需要将今日改动打包为 `v26.2` Release

---

## 按优先级排列的待办方向

### P0 - 验证与反馈
- [ ] 等待/收集第一位学弟学妹 Fork 后的反馈
- [ ] 根据反馈迭代 `onboarding` 仓库的上船指南
- [ ] 检查 Dataview 看板在新用户环境下的"开箱"表现

### P1 - 内容持续精修
- [x] 修复 `kaoyanReview-2.js` 被误删问题，恢复数学仪表盘功能 ✅ 2026-04-17
- [x] 优化 `kaoyanReview-2.js`（性能提升、文案去 AI 味、遗忘预警逻辑修正） ✅ 2026-04-17
- [x] 修改 5 个核心 PZ 模板去 AI 味（PZ5 日记、PZ6 周复盘、PZ9 AI 报告、PZ10 高数/专业课真题） ✅ 2026-04-17
- [x] 精修 `09-15分析报告.md`、`09-15错题报告.md`、第 32 周报告去 AI 味 ✅ 2026-04-17
- [ ] 搜索并清理 Vault 中剩余含 `首席架构师` 的历史文章
- [ ] 继续扫描关键词：`综上所述`、`总而言之`、`战略层面`
- [ ] 对 lazily-copied 内容，选择：精修 / 标注 `ai-assisted: true` / 移入 `-private`

### P2 - 社交媒体矩阵运营
- [ ] 微信公众号：发布「求索号」介绍 + 使用教程
- [ ] B站：录制 Obsidian + 求索号 开箱/演示视频
- [ ] 小红书/知乎：发布图文版快速上手指南
- [ ] 个人博客：同步长文介绍

### P3 - 组织建设（长期）
- [x] 手动 Pin 住 `notes` 和 `onboarding` 到 Org 主页 ✅ 2026-04-17
- [x] 将 Org 成员默认权限设为 `Read` ✅ 2026-04-17
- [ ] 邀请 1-2 位已上岸朋友加入 Org 作为 `Owners` 备份
- [ ] 27 届上岸后，邀请第二代舰长加入 `Captains` Team

---

## 常用命令速查

### 检查 Vault 本地变更
```bash
cd "D:\Obsidian Repo\💯一研为定"
git status
git diff --stat
```

### 扫描 AI 味关键词（Obsidian 内）
1. 按 `Ctrl+Shift+F` 打开全局搜索
2. 输入 `首席架构师` 或 `综上所述`
3. 排除已知正常的目录：
   - `path:"5. 考研日记/日记"`
   - `path:"5. 考研日记/周记"`
   - `path:"Templates/"`
   - `path:"0. 指挥中心/使用说明/"`

### 推送 Vault 变更到母舰
```bash
cd "D:\Obsidian Repo\💯一研为定"
git add -A
git commit -m "你的提交信息"
git push origin main
```
> 注：git 协议层已恢复正常，可直接推送。

---

## 项目文档地图

```
qiusuo-kaoyan/
├── README.md                      # 项目总览（必读）
├── 01-PHASE-TRACKER.md           # Phase 完成状态
├── 02-PROJECT-PREFERENCES.md     # Leo 偏好记录
├── 05-KNOWN-ISSUES.md            # 已知问题与待办
├── 06-AUDIT-2026-04-16.md        # 项目审计报告
├── 07-KAOYANREVIEW2-OPTIMIZATION-PLAN.md  # 仪表盘优化工程方案
├── 99-NEXT-SESSION.md            # 本文件
├── phases/
│   ├── Phase-0-init/             # 初始化记录
│   ├── Phase-1-strategy-draft/   # 方案草稿
│   ├── Phase-2-github-setup/     # GitHub 建设记录
│   ├── Phase-3-vault-cleanup/    # 笔记清洗记录
│   └── Phase-4-launch/           # 启航推送记录 + 招募文案
└── snapshots/                     # 历史快照
    ├── 001-snapshot-Phase0-init-done.md
    ├── 002-snapshot-Phase4-launch-v26.1-done.md
    └── 003-snapshot-org-profile-done.md
```

---

## 启动会话时的推荐第一句话

> "继续推进求索号项目，当前优先级是 [P0/P1/P2/P3]，具体要做：______。"

这样我可以立即加载上下文，无需重新梳理历史。
