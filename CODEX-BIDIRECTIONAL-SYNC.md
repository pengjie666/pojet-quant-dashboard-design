# Codex 双向同步工作流

## 概述

本文档定义了 BitFun 与 Codex 之间的双向同步工作流，确保设计优化和云端操作可以无缝协作。

## 同步流程

```
┌─────────────────┐     Git Push      ┌─────────────────┐     Git Pull      ┌─────────────────┐
│                 │ ───────────────> │                 │ ───────────────> │                 │
│  BitFun 本地    │                  │  GitHub 仓库    │                  │  Codex 云端     │
│  设计优化       │ <─────────────── │  中间存储       │ <─────────────── │  云端操作       │
│                 │     Git Pull     │                 │     Git Push     │                 │
└─────────────────┘                  └─────────────────┘                  └─────────────────┘
```

## 1. BitFun → GitHub → Codex (设计同步)

### 步骤
1. BitFun 在本地完成设计优化
2. 推送到 GitHub 仓库
3. Codex 拉取最新代码
4. Codex 执行云端操作

### BitFun 执行命令
```bash
# 进入项目目录
cd C:\Users\Administrator\Documents\Codex\2026-04-27\visual-studio\quant-dashboard-remote-edit

# 添加变更文件
git add src/index.css DESIGN_SYSTEM.md 10-ROUNDS-OPTIMIZATION.md CODEX-SYNC.json

# 提交变更
git commit -m "设计优化同步 - $(date)"

# 推送到 GitHub
git push origin master
```

### Codex 执行命令
```bash
# 拉取最新代码
git pull origin master

# 检查同步文件
git show --stat HEAD

# 读取同步配置
cat CODEX-SYNC.json

# 执行云端操作
npm install
npm run build
```

## 2. Codex → GitHub → BitFun (云端操作同步)

### 步骤
1. Codex 完成云端操作
2. 提交变更到 Git
3. 推送到 GitHub
4. BitFun 拉取最新代码

### Codex 执行命令
```bash
# 检查变更
git status

# 添加变更文件
git add .

# 提交变更
git commit -m "云端操作同步 - $(date)"

# 推送到 GitHub
git push origin master
```

### BitFun 执行命令
```bash
# 拉取最新代码
git pull origin master

# 检查变更
git log --oneline -5

# 验证构建
npm run build
```

## 3. 自动同步脚本

### 3.1 BitFun 同步脚本 (BITFUN-SYNC.sh)
```bash
#!/bin/bash
# BitFun 同步脚本
# 用于同步设计优化到 GitHub

echo "=== BitFun 同步开始 ==="
echo "时间: $(date)"

# 进入项目目录
cd "C:\Users\Administrator\Documents\Codex\2026-04-27\visual-studio\quant-dashboard-remote-edit"

# 添加变更文件
git add src/index.css DESIGN_SYSTEM.md 10-ROUNDS-OPTIMIZATION.md CODEX-SYNC.json CODEX-SYNC-SUMMARY.md

# 提交变更
git commit -m "设计优化同步 - $(date)"

# 推送到 GitHub
git push origin master

echo "=== BitFun 同步完成 ==="
```

### 3.2 Codex 同步脚本 (CODEX-SYNC-FROM-GIT.sh)
```bash
#!/bin/bash
# Codex 同步脚本
# 用于从 GitHub 拉取设计优化并执行云端操作

echo "=== Codex 同步开始 ==="
echo "时间: $(date)"

# 拉取最新代码
git pull origin master

# 检查同步文件
echo "检查同步文件..."
git show --stat HEAD

# 读取同步配置
echo "读取同步配置..."
cat CODEX-SYNC.json

# 执行云端操作
echo "执行云端操作..."
npm install
npm run build

# 提交变更
echo "提交变更..."
git add .
git commit -m "云端操作同步 - $(date)"

# 推送到 GitHub
echo "推送到 GitHub..."
git push origin master

echo "=== Codex 同步完成 ==="
```

## 4. 同步配置文件

### 4.1 CODEX-SYNC.json (已有)
- 包含 10 轮优化的完整参数
- 包含所有 CSS 变量配置
- 包含组件类定义

### 4.2 SYNC-CONFIG.json (新建)
```json
{
  "sync_config": {
    "repo_url": "https://github.com/pengjie666/pojet-quant-dashboard-design.git",
    "branch": "master",
    "sync_interval": "on_change",
    "auto_push": true,
    "auto_pull": true,
    "sync_files": [
      "src/index.css",
      "DESIGN_SYSTEM.md",
      "10-ROUNDS-OPTIMIZATION.md",
      "CODEX-SYNC.json",
      "CODEX-SYNC-SUMMARY.md"
    ],
    "codex_operations": [
      "npm install",
      "npm run build",
      "验证样式",
      "测试响应式"
    ],
    "git_config": {
      "user.name": "BitFun",
      "user.email": "bitfun@codex.dev",
      "commit_message_format": "设计优化同步 - {date}"
    }
  }
}
```

## 5. 同步验证

### 5.1 验证同步状态
```bash
# 查看 Git 日志
git log --oneline -10

# 查看远程仓库状态
git remote -v

# 查看同步文件
git show --stat HEAD

# 检查 GitHub 仓库
gh repo view pengjie666/pojet-quant-dashboard-design
```

### 5.2 验证构建
```bash
# 运行构建
npm run build

# 检查构建结果
ls -la dist/

# 验证 CSS 变量
grep -r "var(--brand-primary)" src/
```

## 6. 同步状态追踪

### 当前状态
- **BitFun → GitHub**: ✅ 已完成
- **GitHub → Codex**: ⏳ 待执行
- **Codex → GitHub**: ⏳ 待执行
- **GitHub → BitFun**: ⏳ 待执行

### 同步记录
| 时间 | 方向 | 操作 | 状态 |
|------|------|------|------|
| 2026-05-17 08:08 | BitFun → GitHub | 10轮设计优化同步 | ✅ 完成 |
| 2026-05-17 08:08 | GitHub | 创建仓库 | ✅ 完成 |
| 2026-05-17 08:08 | GitHub | 推送代码 | ✅ 完成 |
| 待执行 | Codex → GitHub | 云端操作同步 | ⏳ 待执行 |
| 待执行 | BitFun ← GitHub | 拉取最新代码 | ⏳ 待执行 |

## 7. 故障排除

### 7.1 同步失败
```bash
# 检查 Git 状态
git status

# 检查远程仓库
git remote -v

# 检查网络连接
ping github.com

# 重新同步
git pull origin master
```

### 7.2 构建失败
```bash
# 检查依赖
npm install

# 检查构建配置
npm run build 2>&1 | head -20

# 检查错误日志
cat build-error.log
```

### 7.3 冲突解决
```bash
# 拉取最新代码
git pull origin master

# 解决冲突
git add .
git commit -m "解决冲突 - $(date)"

# 推送到 GitHub
git push origin master
```

## 8. 使用指南

### 8.1 BitFun 用户
1. 在 BitFun 中完成设计优化
2. 运行同步脚本 `BITFUN-SYNC.sh`
3. 检查 GitHub 仓库确认同步
4. 等待 Codex 执行云端操作
5. 拉取最新代码查看结果

### 8.2 Codex 用户
1. 克隆 GitHub 仓库
2. 拉取最新代码 `git pull origin master`
3. 读取 `CODEX-SYNC.json` 获取参数
4. 执行云端操作
5. 提交并推送变更到 GitHub

### 8.3 开发者
1. 查看 `10-ROUNDS-OPTIMIZATION.md` 了解优化详情
2. 查看 `CODEX-SYNC.json` 获取完整参数
3. 查看 `DESIGN_SYSTEM.md` 了解设计规范
4. 查看 `CODEX-SYNC-SUMMARY.md` 了解同步摘要

## 9. 注意事项

### 9.1 安全
- 不要将敏感信息提交到 Git
- 使用 GitHub 个人访问令牌 (PAT) 进行认证
- 定期更新 GitHub 令牌

### 9.2 性能
- 避免频繁的小提交
- 使用有意义的提交信息
- 定期清理 Git 缓存

### 9.3 兼容性
- 确保 Node.js 版本兼容
- 确保 npm 版本兼容
- 确保 Git 版本兼容

---

*本文档由 BitFun 自动生成*
*生成日期: 2026-05-17*
*版本: 1.0*
