# Codex 执行指南

## 概述

本文档指导 Codex 如何执行云端操作并同步回 Git 仓库。

## 前提条件

1. 已克隆 GitHub 仓库
2. 已安装 Node.js 和 npm
3. 已安装 Git

## 执行步骤

### 步骤 1: 拉取最新代码
```bash
cd /path/to/codex-project
git pull origin master
```

### 步骤 2: 检查同步文件
```bash
git show --stat HEAD
cat CODEX-SYNC.json
```

### 步骤 3: 安装依赖
```bash
npm install
```

### 步骤 4: 执行云端操作
```bash
# 运行构建
npm run build

# 验证样式
grep -r "var(--brand-primary)" src/

# 测试响应式
# (手动测试或使用自动化测试工具)
```

### 步骤 5: 提交变更
```bash
# 检查变更
git status

# 添加变更文件
git add .

# 提交变更
git commit -m "云端操作同步 - $(date)"
```

### 步骤 6: 推送到 GitHub
```bash
git push origin master
```

### 步骤 7: 通知 BitFun
```bash
echo "Codex 云端操作完成，请拉取最新代码"
```

## 完整执行脚本

```bash
#!/bin/bash
# Codex 执行脚本

echo "=== Codex 执行开始 ==="

# 拉取最新代码
git pull origin master

# 安装依赖
npm install

# 执行构建
npm run build

# 提交变更
git add .
git commit -m "云端操作同步 - $(date)"

# 推送到 GitHub
git push origin master

echo "=== Codex 执行完成 ==="
```

## 同步配置

### 同步方向
- **BitFun → GitHub**: 设计优化同步
- **GitHub → Codex**: 拉取设计优化
- **Codex → GitHub**: 云端操作同步
- **GitHub → BitFun**: 拉取最新代码

### 同步文件
| 文件 | 说明 | 同步方向 |
|------|------|----------|
| `src/index.css` | 核心样式 | BitFun → GitHub → Codex |
| `DESIGN_SYSTEM.md` | 设计文档 | BitFun → GitHub → Codex |
| `10-ROUNDS-OPTIMIZATION.md` | 优化清单 | BitFun → GitHub → Codex |
| `CODEX-SYNC.json` | 同步配置 | BitFun → GitHub → Codex |
| `CODEX-SYNC-SUMMARY.md` | 同步摘要 | BitFun → GitHub → Codex |
| `CODEX-EXECUTION-GUIDE.md` | 执行指南 | BitFun → GitHub → Codex |

## 注意事项

### 1. Git 配置
```bash
git config user.name "Codex"
git config user.email "codex@github.com"
```

### 2. GitHub 认证
- 使用 GitHub 个人访问令牌 (PAT)
- 确保令牌有推送权限

### 3. 错误处理
```bash
# 检查 Git 状态
git status

# 检查远程仓库
git remote -v

# 检查网络连接
ping github.com
```

### 4. 冲突解决
```bash
# 拉取最新代码
git pull origin master

# 解决冲突
git add .
git commit -m "解决冲突 - $(date)"

# 推送到 GitHub
git push origin master
```

## 验证方法

### 1. 验证同步状态
```bash
git log --oneline -10
git remote -v
git show --stat HEAD
```

### 2. 验证构建
```bash
npm run build
ls -la dist/
```

### 3. 验证样式
```bash
grep -r "var(--brand-primary)" src/
grep -r "var(--bg-page)" src/
```

### 4. 验证 GitHub 仓库
```bash
gh repo view pengjie666/pojet-quant-dashboard-design
```

## 故障排除

### 1. 同步失败
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

### 2. 构建失败
```bash
# 检查依赖
npm install

# 检查构建配置
npm run build 2>&1 | head -20

# 检查错误日志
cat build-error.log
```

### 3. 冲突解决
```bash
# 拉取最新代码
git pull origin master

# 解决冲突
git add .
git commit -m "解决冲突 - $(date)"

# 推送到 GitHub
git push origin master
```

---

*本文档由 BitFun 自动生成*
*生成日期: 2026-05-17*
*版本: 1.0*
