# Pojet Capital 量化仪表板 - 设计系统文档

## 项目概述

这是一个专业的量化交易仪表板，使用 React + TypeScript + Tailwind CSS v4 构建。

## 设计系统

### 核心文件
- [设计系统文档](../DESIGN_SYSTEM.md)
- [10轮优化配置清单](../10-ROUNDS-OPTIMIZATION.md)
- [Codex 同步配置](../CODEX-SYNC.json)
- [Codex 同步摘要](../CODEX-SYNC-SUMMARY.md)

### 技术栈
- **前端框架**: React + TypeScript
- **样式系统**: Tailwind CSS v4
- **构建工具**: Vite
- **字体系统**: Inter + Noto Sans SC + JetBrains Mono
- **配色方案**: 天蓝色 (#7DD3FC) 为主品牌色

## 设计规范

### 配色方案
- **主色**: `#7DD3FC` (Sky)
- **盈利**: `#FB7185` (Pink)
- **亏损**: `#6EE7B7` (Green)
- **背景**: `#05070D` (Deep Blue)

### 字体系统
- **英文字体**: Inter
- **中文字体**: Noto Sans SC
- **代码字体**: JetBrains Mono

### 响应式设计
- **断点**: 1279px, 1023px, 767px, 480px
- **页面最大宽度**: 1760px

### 动画系统
- **过渡时间**: 200ms
- **缓动函数**: cubic-bezier(0.16, 1, 0.3, 1)

## 同步指南

### Codex 同步步骤
1. 检查文件完整性
2. 安装依赖
3. 构建验证
4. 同步文件
5. 验证部署

### 自动化同步
使用 Codex 文档同步技能实现自动化同步：
- 自动检测变更
- 自动更新文档
- 自动验证一致性

## 文件结构

```
quant-dashboard-remote-edit/
├── src/
│   ├── index.css              # 核心样式文件
│   ├── App.tsx                # 应用主组件
│   └── components/            # 组件目录
├── docs/
│   └── README.md              # 本文档
├── DESIGN_SYSTEM.md           # 设计系统文档
├── 10-ROUNDS-OPTIMIZATION.md  # 10轮优化配置清单
├── CODEX-SYNC.json            # Codex 同步配置
├── CODEX-SYNC-SUMMARY.md      # Codex 同步摘要
└── CODEX-SYNC.sh              # 同步脚本
```

## 验证方法

### 构建验证
```bash
npm run build
```

### 样式验证
- 检查所有组件样式
- 测试响应式布局
- 验证动画效果

### 部署验证
- 生产环境构建
- 所有 CSS 类可用
- 所有变量已定义

---

*本文档由 BitFun 自动生成，用于 Codex 云端操作同步*
*生成日期: 2026-05-17*
