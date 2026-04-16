# 下次会话快速启动指南

**最后更新**: 2026-04-16

---

## 项目当前状态（一句话）

「求索号」考研舰队基础设施已完备。GitHub Org `qiusuo-kaoyan` 拥有公开主页 README、核心仓库 `notes`、辅助仓库 `onboarding`、文档补丁 `v26.1`，以及母舰内部全局索引页。当前处于**等待用户验证反馈**阶段。

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

## 按优先级排列的待办方向

### P0 - 验证与反馈
- [ ] 等待/收集第一位学弟学妹 Fork 后的反馈
- [ ] 根据反馈迭代 `onboarding` 仓库的上船指南
- [ ] 检查 Dataview 看板在新用户环境下的"开箱"表现

### P1 - 内容持续精修
- [ ] 对剩余 AI 味较重的笔记进行第二轮人工审校
- [ ] 搜索关键词：`首席架构师`、`综上所述`、`总而言之`、`战略层面`
- [ ] 对 lazily-copied 内容，选择：精修 / 标注 `ai-assisted: true` / 移入 `-private`

### P2 - 社交媒体矩阵运营
- [ ] 微信公众号：发布「求索号」介绍 + 使用教程
- [ ] B站：录制 Obsidian + 求索号 开箱/演示视频
- [ ] 小红书/知乎：发布图文版快速上手指南
- [ ] 个人博客：同步长文介绍

### P3 - 组织建设（长期）
- [ ] 手动 Pin 住 `notes` 和 `onboarding` 到 Org 主页（如尚未操作）
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
