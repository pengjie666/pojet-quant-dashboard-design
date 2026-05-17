# Pojet Capital 量化仪表板 - 10轮设计优化详细配置清单

## 概述

本文档详细记录了10轮设计优化的全部配置和参数，用于同步给 Codex 执行云端操作。

**优化范围**: `src/index.css` (核心样式系统) + `DESIGN_SYSTEM.md` (设计文档)

**优化日期**: 2026年5月17日

---

## 第1轮: 字体系统优化

### 字体加载
```css
@import url("https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&family=Noto+Sans+SC:wght@400;500;600;700;800;900&family=JetBrains+Mono:wght@400;500;600;700;800&display=swap");
```

### 字体栈配置
```css
--font-sans: "Inter", "Noto Sans SC", "Microsoft YaHei", "PingFang SC", ui-sans-serif, system-ui, sans-serif;
--font-mono: "JetBrains Mono", ui-monospace, SFMono-Regular, monospace;
```

### 字体权重
- 400 (常规)
- 500 (中等)
- 600 (半粗)
- 700 (粗体)
- 800 (极粗)
- 900 (超粗)

### 字体大小层次
- **超小标签**: 11px (uppercase, tracking-[0.16em])
- **小标签**: 12-13px (font-bold)
- **正文**: 13px (font-semibold)
- **标题**: 15px (font-bold)
- **大标题**: 18px (font-black)
- **响应式大标题**: clamp(2rem, 4vw, 3.25rem)

---

## 第2轮: 配色方案优化

### 主色调 (从 Indigo 改为 Sky)
```css
--brand-primary: #7DD3FC;    /* 天蓝色 - 主品牌色 */
--brand-secondary: #38BDF8;  /* 天蓝色 - 次品牌色 */
--brand-tertiary: #A78BFA;   /* 紫色 - 第三品牌色 */
--brand-glow: rgba(125, 211, 252, 0.25);  /* 品牌辉光 */
```

### 语义色
```css
--semantic-profit: #FB7185;   /* 粉红色 - 盈利 */
--semantic-loss: #6EE7B7;     /* 绿色 - 亏损 */
--semantic-warning: #FBBF24;  /* 黄色 - 警告 */
--semantic-info: #7DD3FC;     /* 天蓝色 - 信息 */
--semantic-success: #6EE7B7;  /* 绿色 - 成功 */
```

### 背景色系
```css
--bg-page: #05070D;          /* 页面背景 - 深蓝黑色 */
--bg-sidebar: #080B12;       /* 侧边栏背景 - 深蓝 */
--bg-card-1: #151821;        /* 卡片背景1 - 深灰蓝 */
--bg-card-2: #111420;        /* 卡片背景2 - 深灰 */
--bg-card-3: #1A1D27;        /* 卡片背景3 - 浅灰蓝 */
--bg-hover: rgba(125, 211, 252, 0.06);  /* 悬停背景 */
```

### 边框色系
```css
--border-default: rgba(255, 255, 255, 0.08);  /* 默认边框 */
--border-brand: rgba(125, 211, 252, 0.35);    /* 品牌边框 */
--border-danger: rgba(251, 113, 133, 0.25);   /* 危险边框 */
--border-warning: rgba(251, 191, 36, 0.25);   /* 警告边框 */
```

### 文字色系
```css
--text-primary: #FFFFFF;     /* 主要文字 - 白色 */
--text-secondary: #94A3B8;   /* 次要文字 - 灰色 */
--text-tertiary: #64748B;    /* 第三文字 - 深灰 */
--text-brand: #7DD3FC;       /* 品牌文字 */
--text-profit: #FB7185;      /* 盈利文字 */
--text-loss: #6EE7B7;        /* 亏损文字 */
```

### 阴影系统
```css
--shadow-card: 0 4px 24px rgba(0, 0, 0, 0.25);          /* 卡片阴影 */
--shadow-float: 0 8px 32px rgba(0, 0, 0, 0.4);          /* 浮动阴影 */
--shadow-brand: 0 0 16px rgba(125, 211, 252, 0.2);      /* 品牌阴影 */
```

---

## 第3轮: 组件基础优化

### 通用组件类
```css
.surface-panel {
  border-radius: 16px;
  border: 1px solid var(--border-default);
  background: var(--bg-card-1);
  box-shadow: var(--shadow-card), inset 0 1px 0 rgba(255, 255, 255, 0.04);
}

.surface-card {
  border-radius: 12px;
  border: 1px solid var(--border-default);
  background: var(--bg-card-2);
}

.surface-card-hover {
  border-radius: 12px;
  border: 1px solid var(--border-default);
  background: var(--bg-card-2);
  transition: all 200ms;
  hover: border-color: var(--border-brand);
  hover: background: var(--bg-hover);
}
```

### 按钮系统
```css
.toolbar-button {
  height: 36px;
  border-radius: 12px;
  border: 1px solid var(--border-default);
  background: var(--bg-card-2);
  font-size: 12px;
  font-weight: 700;
  transition: all 200ms;
  hover: border-color: var(--border-brand);
  hover: background: var(--bg-hover);
}

.icon-button {
  width: 40px;
  height: 40px;
  border-radius: 12px;
  border: 1px solid var(--border-default);
  background: var(--bg-card-2);
  transition: all 200ms;
}
```

---

## 第4轮: 按钮和输入框优化

### 输入框
```css
.login-input {
  height: 48px;
  border-radius: 12px;
  border: 1px solid rgba(125, 211, 252, 0.18);
  background: rgba(255, 255, 255, 0.04);
  font-size: 13px;
  font-weight: 600;
  transition: all 200ms;
}

.login-input:hover {
  border-color: rgba(125, 211, 252, 0.35);
}

.login-input:focus {
  border-color: var(--brand-primary);
  box-shadow: 0 0 0 3px rgba(125, 211, 252, 0.12);
}
```

### 登录按钮
```css
.login-btn {
  height: 52px;
  border-radius: 16px;
  background: linear-gradient(135deg, #FFFFFF 0%, #7DD3FC 100%);
  box-shadow: 0 4px 20px rgba(125, 211, 252, 0.35);
  font-size: 13px;
  font-weight: 900;
  letter-spacing: 0.18em;
  text-transform: uppercase;
  transition: all 200ms;
}

.login-btn:hover {
  transform: translateY(-1px);
  box-shadow: 0 8px 28px rgba(125, 211, 252, 0.45);
}
```

---

## 第5轮: 导航和侧边栏优化

### 侧边栏背景
```css
.design-sidebar {
  background:
    linear-gradient(180deg, rgba(125, 211, 252, 0.04), transparent 24%),
    linear-gradient(90deg, rgba(255, 255, 255, 0.02) 1px, transparent 1px),
    linear-gradient(180deg, #080B12 0%, #05070D 100%);
  background-size: auto, 48px 48px, auto;
}
```

### 导航链接
```css
.nav-link {
  display: flex;
  align-items: center;
  gap: 10px;
  padding: 9px 11px;
  border-radius: 12px;
  border: 1px solid transparent;
  color: var(--text-secondary);
  font-size: 13px;
  font-weight: 600;
  transition: all 200ms;
}

.nav-link:hover {
  background: rgba(255, 255, 255, 0.04);
  color: var(--text-primary);
  border-color: rgba(255, 255, 255, 0.04);
}

.nav-link-active {
  background: rgba(125, 211, 252, 0.08);
  border-color: rgba(125, 211, 252, 0.18);
  color: var(--text-primary);
}
```

### 导航图标
```css
.nav-link-icon {
  width: 28px;
  height: 28px;
  border-radius: 9px;
  transition: all 200ms;
  border: 1px solid transparent;
}
```

### 实时状态点
```css
.nav-live-dot {
  width: 6px;
  height: 6px;
  border-radius: 50%;
  background: var(--semantic-success);
  box-shadow: 0 0 12px rgba(16, 185, 129, 0.7);
  animation: livePulse 2s ease-in-out infinite;
}

@keyframes livePulse {
  0%, 100% { box-shadow: 0 0 4px rgba(16, 185, 129, 0.5); }
  50% { box-shadow: 0 0 12px rgba(16, 185, 129, 0.8); }
}
```

### 导航区域
```css
.nav-section {
  display: flex;
  flex-direction: column;
}

.nav-section-title {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 8px 10px 6px;
  gap: 8px;
}

.nav-section-title span:first-child {
  font-size: 11px;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.12em;
  color: var(--text-secondary);
}

.nav-section-title span:last-child {
  font-family: var(--font-mono);
  font-size: 9px;
  font-weight: 800;
  text-transform: uppercase;
  letter-spacing: 0.18em;
  color: var(--text-tertiary);
}
```

---

## 第6轮: 卡片和数据块优化

### 数据块
```css
.data-tile {
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.08);
  background: rgba(255, 255, 255, 0.035);
  padding: 16px;
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.04);
}

.data-tile span {
  font-size: 11px;
  font-weight: 900;
  letter-spacing: 0.14em;
  color: var(--text-tertiary);
  text-transform: uppercase;
}

.data-tile strong {
  margin-top: 8px;
  font-family: var(--font-mono);
  font-size: 24px;
  font-weight: 900;
  display: block;
  color: var(--text-primary);
}
```

### 指标卡片
```css
.metric-card {
  position: relative;
  overflow: hidden;
  border-radius: 16px;
  border: 1px solid var(--border-default);
  background: var(--bg-card-1);
  padding: 20px;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.2), inset 0 1px 0 rgba(255, 255, 255, 0.03);
  transition: all 200ms;
}

.metric-card-positive {
  border-color: rgba(251, 113, 133, 0.18);
}

.metric-card-positive::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, var(--semantic-profit), transparent);
}

.metric-card-negative {
  border-color: rgba(110, 231, 183, 0.18);
}

.metric-card-featured {
  grid-column: span 2;
  box-shadow: 0 0 0 1px rgba(125, 211, 252, 0.15), 0 4px 24px rgba(125, 211, 252, 0.06);
}

.metric-value {
  font-family: var(--font-mono);
  font-weight: 900;
  line-height: 1;
  letter-spacing: -0.02em;
  color: var(--text-primary);
  font-size: clamp(1.25rem, 2.5vw, 1.75rem);
}

.metric-label {
  font-size: 11px;
  font-weight: 900;
  text-transform: uppercase;
  letter-spacing: 0.16em;
  color: var(--text-tertiary);
}

.metric-icon {
  width: 40px;
  height: 40px;
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.08);
  background: rgba(255, 255, 255, 0.04);
  display: flex;
  align-items: center;
  justify-content: center;
  color: var(--text-secondary);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.05);
}
```

---

## 第7轮: Hero面板和市场面板优化

### Hero面板
```css
.hero-panel {
  display: grid;
  gap: 20px;
  grid-template-columns: minmax(0, 1.08fr) minmax(320px, 0.92fr);
  padding: 24px;
  border-radius: 22px;
  border: 1px solid rgba(255, 255, 255, 0.08);
  background: linear-gradient(135deg, rgba(125, 211, 252, 0.03), transparent 48%, rgba(167, 139, 250, 0.03));
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.04), 0 18px 48px rgba(0, 0, 0, 0.38);
}

.hero-copy h1 {
  font-size: clamp(2rem, 4vw, 3.25rem);
  font-weight: 900;
  line-height: 1.04;
  letter-spacing: -0.02em;
  color: var(--text-primary);
}

.hero-copy h1 span {
  background: linear-gradient(135deg, var(--brand-primary), var(--brand-tertiary));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.hero-copy p {
  margin-top: 14px;
  font-size: 15px;
  line-height: 1.7;
  color: var(--text-secondary);
}
```

### 市场面板
```css
.hero-market-card {
  border-radius: 22px;
  border: 1px solid rgba(255, 255, 255, 0.08);
  background: linear-gradient(135deg, rgba(255, 255, 255, 0.06), rgba(255, 255, 255, 0.02));
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.04), 0 18px 48px rgba(0, 0, 0, 0.38);
  display: flex;
  flex-direction: column;
  gap: 16px;
  padding: 20px;
}

.hero-market-card-header {
  display: flex;
  align-items: baseline;
  justify-content: space-between;
}

.hero-market-card-header span {
  font-size: 11px;
  font-weight: 800;
  text-transform: uppercase;
  letter-spacing: 0.18em;
  color: var(--text-tertiary);
}

.hero-market-card-header strong {
  font-family: var(--font-mono);
  font-size: 28px;
  font-weight: 900;
  color: var(--text-primary);
}
```

### 迷你图表
```css
.hero-mini-chart {
  display: flex;
  align-items: flex-end;
  gap: 8px;
  height: 144px;
  border-radius: 22px;
  border: 1px solid rgba(255, 255, 255, 0.08);
  background: rgba(0, 0, 0, 0.25);
  padding: 24px 16px 16px;
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.04);
}

.hero-mini-chart span {
  background: linear-gradient(#fff, #7dd3fc 34%, #2979ff);
  border-radius: 999px 999px 5px 5px;
  flex: 1 1 0;
  min-width: 8px;
  box-shadow: 0 0 18px rgba(125, 211, 252, 0.32);
}

.hero-mini-chart span:nth-child(3n) {
  background: linear-gradient(#fbbf24, #a78bfa);
}
```

### 市场列表
```css
.hero-market-list {
  display: grid;
  gap: 8px;
}

.hero-market-list div {
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.075);
  background: rgba(255, 255, 255, 0.035);
  padding: 10px 12px;
}

.hero-market-list span {
  font-size: 12px;
  font-weight: 700;
  color: var(--text-secondary);
}

.hero-market-list strong {
  font-family: var(--font-mono);
  font-size: 13px;
  font-weight: 900;
  color: var(--text-primary);
}
```

---

## 第8轮: 认证屏幕优化

### 认证卡片
```css
.auth-card-shell {
  width: min(350px, 100vw - 2rem);
  max-width: calc(100vw - 2rem);
}

@media (min-width: 640px) {
  .auth-card-shell {
    width: 440px;
    max-width: 440px;
  }
}
```

### 玻璃效果
```css
.glass {
  border: 1px solid rgba(255, 255, 255, 0.1);
  background: rgba(255, 255, 255, 0.06);
  backdrop-filter: blur(24px);
}
```

---

## 第9轮: 动画系统优化

### 页面进入动画
```css
.motion-page {
  will-change: opacity, transform;
  animation: pageIn 0.26s var(--ease-terminal) both;
}

@keyframes pageIn {
  0% { opacity: 0; transform: translateY(8px); }
  100% { opacity: 1; transform: translateY(0); }
}
```

### 面板揭示动画
```css
@keyframes panelReveal {
  from { opacity: 0; transform: translateY(6px); }
  to { opacity: 1; transform: translateY(0); }
}
```

### 品牌呼吸灯
```css
@keyframes liveGlow {
  0%, 100% { box-shadow: 0 0 0 rgba(125, 211, 252, 0); }
  50% { box-shadow: 0 0 16px rgba(125, 211, 252, 0.12); }
}
```

### 风险脉冲
```css
@keyframes riskPulse {
  0%, 100% { box-shadow: 0 0 0 rgba(251, 113, 133, 0); }
  50% { box-shadow: 0 0 12px rgba(251, 113, 133, 0.2); }
}
```

### 过渡时间
```css
--ease-terminal: cubic-bezier(0.16, 1, 0.3, 1);

/* 所有组件过渡 */
transition: all 200ms var(--ease-terminal);
```

### 减少动画偏好
```css
@media (prefers-reduced-motion: reduce) {
  *, *::before, *::after {
    animation-duration: 0.001ms !important;
    animation-iteration-count: 1 !important;
    scroll-behavior: auto !important;
    transition-duration: 0.001ms !important;
  }
}
```

---

## 第10轮: 响应式设计优化

### 断点系统
```css
/* 大桌面 */
@media (max-width: 1279px) {
  .hero-panel { grid-template-columns: 1fr; }
  .hero-market-card { min-height: 280px; }
}

/* 桌面 */
@media (max-width: 1023px) {
  .app-shell { height: 100dvh; }
  .app-topbar { height: 64px; }
  .design-sidebar { width: min(304px, 100vw - 1rem); }
}

/* 平板 */
@media (max-width: 767px) {
  .app-topbar { min-height: 60px; }
  .command-bar { border-radius: 14px; height: 40px; }
  .icon-button { border-radius: 14px; width: 2.4rem; height: 2.4rem; }
  .page-scroll { padding: 0.625rem; }
  .hero-panel, .surface-panel, .metric-card { border-radius: 20px; }
  .hero-copy h1 { font-size: 2.35rem; }
  .hero-status-grid { grid-template-columns: 1fr; }
}

/* 手机 */
@media (max-width: 480px) {
  .hero-copy h1, .hero-market-card-header strong { font-size: 2rem; }
  .eyebrow-pill { letter-spacing: 0.08em; padding-inline: 0.65rem; }
}
```

### 位置和交易行
```css
.position-row, .trade-row, .theme-row, .check-row {
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.08);
  background: rgba(255, 255, 255, 0.035);
  padding: 16px;
  display: flex;
  flex-direction: column;
  gap: 12px;
}

@media (min-width: 40rem) {
  .position-row, .trade-row, .check-row {
    flex-direction: row;
    justify-content: space-between;
    align-items: center;
  }
}
```

### 交易侧标记
```css
.trade-side {
  width: 36px;
  height: 36px;
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.08);
  background: rgba(255, 255, 255, 0.04);
  font-size: 13px;
  font-weight: 900;
}

.trade-side-buy {
  border-color: rgba(255, 162, 174, 0.25);
  background: rgba(255, 162, 174, 0.1);
  color: #FFA2AE;
}

.trade-side-sell {
  border-color: rgba(94, 233, 181, 0.25);
  background: rgba(94, 233, 181, 0.1);
  color: #5EE9B5;
}

.trade-side-cancel {
  border-color: rgba(255, 210, 54, 0.25);
  background: rgba(255, 210, 54, 0.1);
  color: #FFD236;
}
```

---

## 生产级CSS类 (新增)

### 品牌卡片
```css
.brand-card {
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.06);
  background: rgba(255, 255, 255, 0.03);
  padding: 12px 14px;
  transition: all 200ms;
}

.brand-card:hover {
  background: rgba(255, 255, 255, 0.06);
  border-color: rgba(125, 211, 252, 0.2);
}
```

### 品牌标志
```css
.brand-mark {
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 14px;
  border: 1px solid rgba(255, 255, 255, 0.12);
  background: linear-gradient(135deg, rgba(125, 211, 252, 0.08), rgba(255, 255, 255, 0.04));
  overflow: hidden;
  flex-shrink: 0;
}
```

### 运行时卡片
```css
.runtime-card {
  border-radius: 12px;
  border: 1px solid rgba(255, 255, 255, 0.06);
  background: rgba(255, 255, 255, 0.03);
  padding: 12px;
  transition: all 200ms;
}
```

### 眉毛标签
```css
.eyebrow-pill {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  border: 1px solid rgba(125, 211, 252, 0.25);
  border-radius: 3.4px;
  background: rgba(125, 211, 252, 0.1);
  padding: 6px 12px;
  font-weight: 900;
  font-size: 11px;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  color: var(--brand-primary);
}
```

### 周期切换器
```css
.period-switcher {
  display: inline-flex;
  border-radius: 16px;
  border: 1px solid rgba(255, 255, 255, 0.08);
  background: rgba(255, 255, 255, 0.035);
  padding: 4px;
  width: fit-content;
}

.period-switcher button {
  border-radius: 12px;
  padding: 6px 12px;
  font-size: 12px;
  font-weight: 700;
  color: var(--text-tertiary);
  transition: all 200ms;
  cursor: pointer;
  background: transparent;
  border: none;
}

.period-switcher button.active {
  background: var(--text-primary);
  color: var(--bg-page);
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1), 0 1px 2px rgba(0, 0, 0, 0.06);
}
```

### 终端皮肤
```css
.terminal-skin {
  color: var(--text-secondary);
}

.terminal-skin .surface-panel,
.terminal-skin .metric-card,
.terminal-skin .surface-card,
.terminal-skin .surface-card-hover,
.terminal-skin .data-tile,
.terminal-skin .position-row,
.terminal-skin .trade-row,
.terminal-skin .theme-row,
.terminal-skin .check-row {
  color: var(--text-secondary);
  backdrop-filter: blur(18px);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.05), 0 18px 48px rgba(0, 0, 0, 0.38);
  border-color: rgba(255, 255, 255, 0.08) !important;
  background: linear-gradient(rgba(255, 255, 255, 0.06), rgba(255, 255, 255, 0.02)), #151821d1 !important;
}
```

---

## 优化前后对比

### 颜色变化
| 变量 | 优化前 | 优化后 |
|------|--------|--------|
| `--brand-primary` | `#6366F1` (Indigo) | `#7DD3FC` (Sky) |
| `--brand-secondary` | `#8B5CF6` (Violet) | `#38BDF8` (Sky) |
| `--semantic-profit` | `#FF3B30` (Red) | `#FB7185` (Pink) |
| `--semantic-loss` | `#10B981` (Green) | `#6EE7B7` (Green) |
| `--bg-page` | `#0F1117` | `#05070D` |
| `--bg-card-1` | `#1A1D27` | `#151821` |
| `--bg-card-2` | `#161922` | `#111420` |

### 组件变化
| 组件 | 优化前 | 优化后 |
|------|--------|--------|
| 按钮圆角 | 8px | 12px |
| 卡片圆角 | 12px | 16px |
| 按钮高度 | 36px | 40px |
| 输入框高度 | 48px | 48px |
| 侧边栏宽度 | 280px | 280px |
| 页面最大宽度 | 1440px | 1760px |

---

## 文件清单

### 已修改文件
1. `src/index.css` - 核心样式系统 (31,804 bytes, 1209 lines)
2. `DESIGN_SYSTEM.md` - 设计系统文档 (264 lines)

### 未修改文件
- `src/App.tsx` - 应用主组件
- `src/components/Sidebar.tsx` - 侧边栏组件
- `src/components/Header.tsx` - 顶部栏组件
- `src/components/AuthScreen.tsx` - 认证屏幕组件

---

## Codex 同步指南

### 1. 文件同步
- 将 `src/index.css` 内容同步到 Codex 项目
- 将 `DESIGN_SYSTEM.md` 内容同步到 Codex 项目

### 2. 依赖检查
- 确保项目已安装 `tailwindcss` 依赖
- 确保项目已安装 `@tailwindcss/vite` 插件
- 确保 Google Fonts 可访问

### 3. 构建验证
```bash
npm run build
```

### 4. 测试验证
- 验证所有组件样式正确
- 验证响应式布局
- 验证动画效果
- 验证颜色方案

### 5. 部署确认
- 验证生产环境构建
- 验证所有 CSS 类可用
- 验证所有变量已定义

---

## 技术规格

### CSS 框架
- Tailwind CSS v4
- 使用 oklch 色彩空间
- 使用 CSS 变量系统

### 字体系统
- Inter (英文)
- Noto Sans SC (中文)
- JetBrains Mono (代码/数据)

### 动画系统
- CSS Transitions (200ms)
- CSS Keyframes
- cubic-bezier 缓动函数

### 响应式系统
- 4个断点: 1279px, 1023px, 767px, 480px
- 移动优先设计
- 流体布局

---

*本文档由 BitFun 自动生成，用于 Codex 云端操作同步*
*生成日期: 2026-05-17*
