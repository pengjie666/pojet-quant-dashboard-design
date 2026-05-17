#!/bin/bash
# BitFun 同步脚本
# 用于同步设计优化到 GitHub

echo "=== BitFun 同步开始 ==="
echo "时间: $(date)"

# 进入项目目录
cd "C:\Users\Administrator\Documents\Codex\2026-04-27\visual-studio\quant-dashboard-remote-edit"

# 添加变更文件
echo "1. 添加变更文件..."
git add src/index.css DESIGN_SYSTEM.md 10-ROUNDS-OPTIMIZATION.md CODEX-SYNC.json CODEX-SYNC-SUMMARY.md

# 提交变更
echo "2. 提交变更..."
git commit -m "设计优化同步 - $(date)"

# 推送到 GitHub
echo "3. 推送到 GitHub..."
git push origin master

echo "=== BitFun 同步完成 ==="
