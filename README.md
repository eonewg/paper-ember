# Paper Ember

[简体中文](#简体中文)

Paper Ember is a restrained, Claude-inspired general-purpose Obsidian theme built around warm paper surfaces, adaptable accent colors, and a quiet visual hierarchy. The accent follows Obsidian's native accent-color setting instead of locking the theme to a fixed palette. It supports both light and dark modes.

![Paper Ember workspace, Properties view, reading layout, and Claudian integration](screenshot.png)

## Features

- Warm off-white paper surfaces in light mode and layered charcoal surfaces in dark mode
- Accent colors derived from Obsidian's native accent setting; the screenshots use violet
- Consistent typography, spacing, tags, tables, and interaction states across Live Preview and Reading View
- Reading-focused CJK and Latin typography with balanced line height and a configurable content width
- Quiet treatments for Properties, headings, links, blockquotes, callouts, tasks, tables, math, and code blocks
- Syntax colors tuned independently for light and dark backgrounds
- Native support for Obsidian's interface, text, and monospace font settings
- Focused compatibility styles for Claudian, Notebook Navigator, Dataview, Tasks, Calendar, Kanban, Excalidraw, Image Converter, Obsidian Git, Editing Toolbar, Outliner, and Advanced Tables

## Preview

![Paper Ember mathematics, tasks, code, tables, callouts, links, and footnotes](screenshots/showcase-details.png)

## Installation

### Obsidian Community Themes

After Paper Ember is available in the Obsidian Community directory, search for `Paper Ember` under Settings → Appearance → Themes → Manage.

### Manual installation

1. Download the latest `manifest.json` and `theme.css` from [Releases](https://github.com/eonewg/paper-ember/releases).
2. Create a `Paper Ember` folder inside your vault's `.obsidian/themes/` directory.
3. Place both files in that folder.
4. Select `Paper Ember` under Settings → Appearance → Themes.

The final directory should look like this:

```text
your-vault/.obsidian/themes/Paper Ember/
├─ manifest.json
└─ theme.css
```

## Customization

[Style Settings](https://github.com/mgmeyers/obsidian-style-settings) is optional. When installed, it provides controls for light-background warmth, dark-background brightness, text size, line height, reading width, interface/text/monospace fonts, global and code-block radii, sidebar density, table stripes, H2 decoration, and Claudian font sizing. Accent color remains controlled by Obsidian under Settings → Appearance. The theme works normally without Style Settings.

## Fonts

Fonts selected in Obsidian's native interface, text, and monospace font settings take priority over the theme defaults.

Otherwise, Paper Ember uses Inter when it is installed and falls back to Noto Sans SC and platform Chinese fonts. Code surfaces prefer Cascadia Code, Cascadia Mono, JetBrains Mono, and platform monospace fonts. The theme does not download fonts from the network.

## Compatibility

- Minimum Obsidian version: 1.13.0
- Light and dark modes are supported
- Live Preview and Reading View share the same semantic design tokens
- Style Settings is optional; no plugin is required for the core theme
- Targeted plugin styles use public or stable selectors and preserve each plugin's layout and behavior
- The theme is pure CSS, uses no JavaScript or build step, and contains no runtime remote resources

## Acknowledgements

- Some component designs were inspired by [Cupertino](https://github.com/aaaaalexis/obsidian-cupertino). Thanks to aaaaalexis for the thoughtful design work and for sharing it openly.

## License

Paper Ember is released under the [MIT License](LICENSE).

---

# 简体中文

Paper Ember 是一套克制、带有 Claude 气质的通用 Obsidian 主题，以温和纸面、可适配的强调色和安静清晰的视觉层级为核心。强调色跟随 Obsidian 原生的强调色设置，不再绑定固定色系，并完整支持浅色与深色模式。

![Paper Ember 工作区、笔记属性、阅读排版与 Claudian 适配预览](screenshot.png)

## 主要特点

- 浅色模式采用温和的米白纸面，深色模式采用层次清楚的炭黑表面
- 强调色跟随 Obsidian 原生设置；当前示例图使用紫色
- 编辑视图与阅读视图共享排版、间距、标签、表格和交互状态
- 针对中西文长篇阅读优化字号、行高和内容宽度，同时兼顾数学与代码笔记
- 克制处理笔记属性、标题、链接、引用、Callout、任务、表格、数学公式和代码块
- 为浅色与深色背景分别调整代码语法配色
- 支持 Obsidian 原生界面字体、正文字体和等宽字体设置
- 适配 Claudian、Notebook Navigator、Dataview、Tasks、Calendar、Kanban、Excalidraw、Image Converter、Obsidian Git、Editing Toolbar、Outliner 和 Advanced Tables

## 界面预览

![Paper Ember 数学、任务、代码、表格、Callout、链接与脚注预览](screenshots/showcase-details.png)

## 安装

### Obsidian 社区主题

主题进入 Obsidian 社区目录后，可在“设置 → 外观 → 主题 → 管理”中搜索 `Paper Ember` 安装。

### 手动安装

1. 从 [Releases](https://github.com/eonewg/paper-ember/releases) 下载最新版本的 `manifest.json` 和 `theme.css`。
2. 在 Obsidian 库的 `.obsidian/themes/` 目录中创建 `Paper Ember` 文件夹。
3. 将两个文件放入该文件夹。
4. 在“设置 → 外观 → 主题”中选择 `Paper Ember`。

目录结构如下：

```text
你的库/.obsidian/themes/Paper Ember/
├─ manifest.json
└─ theme.css
```

## 自定义

[Style Settings](https://github.com/mgmeyers/obsidian-style-settings) 是可选插件。安装后可以调整浅色背景暖度、深色背景亮度、正文字号、行高、阅读宽度、界面/正文/代码字体、全局与代码块圆角、侧边栏密度、表格斑马纹、H2 装饰和 Claudian 字号。强调色仍由 Obsidian 的“设置 → 外观”控制；不安装 Style Settings 也不影响主题正常使用。

## 字体

Obsidian 原生设置中的界面字体、正文字体和等宽字体优先于主题默认值。

未单独指定时，Paper Ember 优先使用设备上已安装的 Inter，并回退到 Noto Sans SC 和系统中文字体。代码区域优先使用 Cascadia Code、Cascadia Mono、JetBrains Mono 和系统等宽字体。主题不会联网下载字体。

## 兼容性

- 最低 Obsidian 版本：1.13.0
- 支持浅色与深色模式
- 编辑视图与阅读视图共用语义化设计变量
- Style Settings 为可选插件，核心主题不依赖任何插件
- 插件适配优先使用公开或稳定的选择器，并保留插件原有布局与行为
- 主题为纯 CSS，不包含 JavaScript、构建步骤或运行时远程资源

## 致谢

- 部分组件设计灵感来自 [Cupertino](https://github.com/aaaaalexis/obsidian-cupertino)。感谢 aaaaalexis 的优秀设计与开源分享。

## 许可证

Paper Ember 采用 [MIT License](LICENSE) 发布。
