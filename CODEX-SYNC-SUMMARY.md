# Codex 云端同步摘要

## 同步信息
- **同步ID**: pojet-capital-design-v1.0
- **同步日期**: 2026-05-17
- **同步状态**: 完成
- **总轮次**: 10轮

## 同步文件清单

| 文件 | 大小 | 行数 | 状态 | 说明 |
|------|------|------|------|------|
| `src/index.css` | 31,804 bytes | 1,209 lines | 修改 | 核心样式系统 |
| `DESIGN_SYSTEM.md` | 8,742 bytes | 264 lines | 修改 | 设计系统文档 |
| `10-ROUNDS-OPTIMIZATION.md` | - | - | 新建 | 10轮优化详细配置清单 |
| `CODEX-SYNC.json` | - | - | 新建 | Codex 同步配置文件 |
| `CODEX-SYNC.sh` | - | - | 新建 | 同步脚本 |

## 10轮优化核心参数

### 第1轮: 字体系统
- **字体**: Inter + Noto Sans SC + JetBrains Mono
- **权重**: 400, 500, 600, 700, 800, 900
- **大小**: 11px - 3.25rem

### 第2轮: 配色方案
- **主色**: `#7DD3FC` (Sky)
- **盈利**: `#FB7185` (Pink)
- **亏损**: `#6EE7B7` (Green)
- **背景**: `#05070D` (Deep Blue)

### 第3轮: 组件基础
- **表面面板**: border-radius 16px
- **表面卡片**: border-radius 12px
- **悬停效果**: transition 200ms

### 第4轮: 按钮和输入框
- **工具栏按钮**: height 36px, border-radius 12px
- **图标按钮**: 40x40px, border-radius 12px
- **输入框**: height 48px, border-radius 12px
- **登录按钮**: height 52px, border-radius 16px

### 第5轮: 导航和侧边栏
- **导航链接**: border-radius 12px, transition 200ms
- **导航图标**: 28x28px, border-radius 9px
- **实时点**: 6x6px, animation livePulse 2s

### 第6轮: 卡片和数据块
- **数据块**: border-radius 16px, padding 16px
- **指标卡片**: border-radius 16px, padding 20px
- **指标值**: font-size clamp(1.25rem, 2.5vw, 1.75rem)

### 第7轮: Hero面板
- **Hero面板**: grid-template-columns 1.08fr 0.92fr, gap 20px
- **Hero标题**: font-size clamp(2rem, 4vw, 3.25rem)
- **市场卡片**: border-radius 22px, padding 20px
- **迷你图表**: height 144px, border-radius 22px

### 第8轮: 认证屏幕
- **认证卡片**: width min(350px, 100vw - 2rem)
- **玻璃效果**: backdrop-filter blur(24px)
- **登录按钮**: background linear-gradient(135deg, #FFFFFF, #7DD3FC)

### 第9轮: 动画系统
- **过渡时间**: 200ms
- **缓动函数**: cubic-bezier(0.16, 1, 0.3, 1)
- **页面进入**: pageIn 0.26s
- **面板揭示**: panelReveal 400ms
- **品牌呼吸灯**: liveGlow 5s
- **风险脉冲**: riskPulse 3s
- **实时脉冲**: livePulse 2s

### 第10轮: 响应式设计
- **断点**: 1279px, 1023px, 767px, 480px
- **页面最大宽度**: 1760px
- **侧边栏宽度**: min(304px, 100vw - 1rem)

## 生产级CSS类 (新增)

| 类名 | 说明 |
|------|------|
| `.brand-card` | 品牌卡片 |
| `.brand-mark` | 品牌标志 |
| `.runtime-card` | 运行时卡片 |
| `.eyebrow-pill` | 眉毛标签 |
| `.period-switcher` | 周期切换器 |
| `.terminal-skin` | 终端皮肤 |
| `.hero-panel` | Hero面板 |
| `.hero-market-card` | 市场面板 |
| `.hero-mini-chart` | 迷你图表 |
| `.hero-market-list` | 市场列表 |
| `.data-tile` | 数据块 |
| `.position-row` | 位置行 |
| `.trade-row` | 交易行 |
| `.trade-side-buy` | 买入标记 |
| `.trade-side-sell` | 卖出标记 |
| `.trade-side-cancel` | 取消标记 |

## CSS变量完整配置

```css
/* 字体 */
--font-sans: "Inter", "Noto Sans SC", "Microsoft YaHei", "PingFang SC", ui-sans-serif, system-ui, sans-serif;
--font-mono: "JetBrains Mono", ui-monospace, SFMono-Regular, monospace;

/* 品牌色 */
--brand-primary: #7DD3FC;
--brand-secondary: #38BDF8;
--brand-tertiary: #A78BFA;
--brand-glow: rgba(125, 211, 252, 0.25);

/* 语义色 */
--semantic-profit: #FB7185;
--semantic-loss: #6EE7B7;
--semantic-warning: #FBBF24;
--semantic-info: #7DD3FC;
--semantic-success: #6EE7B7;

/* 背景色 */
--bg-page: #05070D;
--bg-sidebar: #080B12;
--bg-card-1: #151821;
--bg-card-2: #111420;
--bg-card-3: #1A1D27;
--bg-hover: rgba(125, 211, 252, 0.06);

/* 边框色 */
--border-default: rgba(255, 255, 255, 0.08);
--border-brand: rgba(125, 211, 252, 0.35);
--border-danger: rgba(251, 113, 133, 0.25);
--border-warning: rgba(251, 191, 36, 0.25);

/* 文字色 */
--text-primary: #FFFFFF;
--text-secondary: #94A3B8;
--text-tertiary: #64748B;
--text-brand: #7DD3FC;
--text-profit: #FB7185;
--text-loss: #6EE7B7;

/* 阴影 */
--shadow-card: 0 4px 24px rgba(0, 0, 0, 0.25);
--shadow-float: 0 8px 32px rgba(0, 0, 0, 0.4);
--shadow-brand: 0 0 16px rgba(125, 211, 252, 0.2);

/* 缓动 */
--ease-terminal: cubic-bezier(0.16, 1, 0.3, 1);
```

## Codex 执行步骤

1. **检查文件完整性**
   ```bash
   ls -la src/index.css DESIGN_SYSTEM.md 10-ROUNDS-OPTIMIZATION.md CODEX-SYNC.json
   ```

2. **安装依赖**
   ```bash
   npm install
   ```

3. **构建验证**
   ```bash
   npm run build
   ```

4. **同步文件**
   ```bash
   # 复制 src/index.css 到 Codex 项目
   cp src/index.css /path/to/codex-project/src/index.css
   ```

5. **验证部署**
   - 检查所有组件样式
   - 测试响应式布局
   - 验证动画效果
   - 确认颜色方案

## 技术规格

- **CSS框架**: Tailwind CSS v4
- **颜色空间**: oklch
- **字体系统**: Inter + Noto Sans SC + JetBrains Mono
- **动画系统**: CSS Transitions + Keyframes
- **响应式系统**: 4个断点 (1279px, 1023px, 767px, 480px)

---

*本摘要由 BitFun 自动生成*
*生成日期: 2026-05-17*
