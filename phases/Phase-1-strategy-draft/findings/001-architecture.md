# 发现: 舰长联盟 GitHub Org 架构设计

**日期**: 2026-04-15  
**类型**: 架构

---

## 摘要

设计一个轻量级但具备扩展性的 GitHub Organization 架构，命名为 `qiusuo-kaoyan`，核心目标是在不增加维护负担的前提下，为代际传承提供完整的基础设施。

---

## 1. Org 基础信息

| 属性 | 值 |
|------|---|
| **Org 名称** | `qiusuo-kaoyan` |
| **显示名称** | 求索号考研联盟 (Qiusuo Kaoyan Fleet) |
| **描述** | 代际传承的开源考研知识母舰 —— 路漫漫其修远兮，吾将上下而求索。求索号是一艘渡所有考研学子上岸的船。 |
| **网站** | `https://qiusuo-kaoyan.github.io`（预留） |
| **邮箱** | 第一代舰长邮箱（可选） |

---

## 2. 仓库清单

### 核心仓库（Phase 2 立即创建）

| 仓库名 | 可见性 | 用途 | 说明 |
|--------|--------|------|------|
| `notes` | **Public** | 核心知识母舰 | 存放全部去个人化的 Markdown 笔记、图片、Canvas、模板 |
| `onboarding` | **Public** | 新舰长上船指南 | Git+Obsidian 傻瓜级图文教程、常见 Q&A |

### 可选扩展仓库（Phase 3+ 视情况创建）

| 仓库名 | 可见性 | 用途 | 创建时机 |
|--------|--------|------|----------|
| `qiusuo-kaoyan.github.io` | Public | 官方导航站点 | 有前端志愿者时 |
| `captain-logs` | **Private** | 历代舰长内部日志 | 组织壮大后，仅限 Maintainer 可见 |
| `tools` | Public | 自动化脚本/工具 | 有技术型舰长加入时 |

---

## 3. Team 与权限设计

### Team 层级

```
qiusuo-kaoyan (Org)
├── Owners          # 组织所有者（第一代舰长 + 信任的后继者）
├── Captains        # 历代被认可的舰长，具备 Maintainer 权限
├── Contributors    # 活跃贡献者，具备 Triage 权限
└── Members         # 普通成员（Fork Leo自动加入，可选）
```

### 权限矩阵

| Team | `notes` | `onboarding` | `website` | `captain-logs` |
|------|---------|--------------|-----------|----------------|
| Owners | Admin | Admin | Admin | Admin |
| Captains | Maintain | Maintain | Maintain | Write |
| Contributors | Triage | Triage | Triage | - |
| Members | Read | Read | Read | - |

### 仪式感：舰长徽章

每一代舰长被邀请加入 `Captains` Team 时，在个人资料中显示：

> 🚀 **Captain Gen-1** @ qiusuo-kaoyan
> 🚀 **Captain Gen-2** @ qiusuo-kaoyan

---

## 4. 分支策略

### `notes` 仓库

```
main                      # 稳定版，只接受经过 Review 的 PR
  ├── release/v26.1       # 26届 Release 分支（从 main 切出，只接受 bugfix）
  └── pr/captain-gen2-*   # 各代舰长的 PR（合并后删除）
```

### 规则
- `main` 分支受保护：必须经过至少 1 个 Review 才能合并。
- 舰长日常在自己的 Fork 中开发，通过 PR 合并回母舰。
- 每年考研季结束后，从 `main` 切出 `release/v{届数}.{补丁号}` 分支并打 Tag。

---

## 5. Release 策略（届数制）

### 命名规则

> 考研行业惯例：25年底考试的学生称为「26届」（26年入学）。Release 命名遵循此惯例。

```
v{届数}.{补丁号}

示例:
- v26.0   # 26届考研初始版（第一代舰长启航，25年底考试）
- v26.1   # 26届考研第一次重大更新
- v27.0   # 27届考研完整版（第二代舰长加入，26年底考试）
```

### Release 内容模板

每个 Release 必须包含：
1. **舰船升级日志**（Changelog）：新增/修改的章节
2. **舰长名录**：本版贡献者名单
3. **已知航线问题**（Known Issues）：尚未解决的争议或待补充内容
4. **Assets**：可选，如导出的 PDF 目录或思维导图

---

## 6. 与本地 Vault 的对应关系

| GitHub 路径 | 本地 Obsidian Vault 路径 | 说明 |
|-------------|--------------------------|------|
| `qiusuo-kaoyan/notes` | `D:\Obsidian Repo\💯一研为定` | 公开知识库 |
| `qiusuo-kaoyan/captain-logs`（未来） | `D:\Obsidian Repo\💯一研为定-private` | 私密日志 |

---

## 影响

该架构确保了：
1. **可 Fork**：Public 仓库让任何学弟学妹都能 Fork 并二次创作。
2. **可扩展**：从 2 个仓库起步，未来可平滑增加网站、工具、私有日志。
3. **可维护**：分支和 Release 策略简单，不依赖复杂的 CI/CD。

## 建议

- Phase 2 优先创建 `qiusuo-kaoyan` Org 和两个核心仓库。
- 第一代舰长（Leo）先邀请 1-2 位已上岸的朋友作为 `Owners` 备份，防止个人账号丢失导致 Org 失控。
