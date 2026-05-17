#!/bin/bash
# Codex 同步脚本
# 用于从 GitHub 拉取设计优化并执行云端操作

echo "=== Codex 同步开始 ==="
echo "时间: $(date)"

# 拉取最新代码
echo "1. 拉取最新代码..."
git pull origin master

# 检查同步文件
echo "2. 检查同步文件..."
git show --stat HEAD

# 读取同步配置
echo "3. 读取同步配置..."
cat CODEX-SYNC.json

# 执行云端操作
echo "4. 执行云端操作..."
npm install
npm run build

# 提交变更
echo "5. 提交变更..."
git add .
git commit -m "云端操作同步 - $(date)"

# 推送到 GitHub
echo "6. 推送到 GitHub..."
git push origin master

echo "=== Codex 同步完成 ==="
