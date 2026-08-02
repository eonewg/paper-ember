# Paper Ember

[简体中文](#简体中文)

Paper Ember is an Obsidian theme with soft paper-like backgrounds, restrained terracotta accents, and a calm visual hierarchy. It supports both light and dark modes.

![Paper Ember theme preview](screenshot.png)

## Features

- Soft paper tones in light mode and a layered charcoal palette in dark mode
- Consistent typography across Live Preview and Reading View
- Restrained headings, blockquotes, callouts, tables, and code blocks
- Clear syntax colors designed for both light and dark modes
- Support for Obsidian's native interface, text, and monospace font settings
- Interface refinements for commonly used plugins including Notebook Navigator and Claudian
- Optional Style Settings controls for colors, font size, line height, reading width, fonts, radii, and sidebar density

## Preview

![Paper Ember tasks, code blocks, tables, callouts, links, and footnotes preview](screenshots/showcase-details.png)

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

[Style Settings](https://github.com/mgmeyers/obsidian-style-settings) is optional. When installed, it provides controls for the accent color, text size, line height, reading width, fonts, radii, and sidebar density. The theme works normally without it.

## Fonts

Fonts selected in Obsidian's native interface, text, and monospace font settings take priority over the theme defaults.

Otherwise, Paper Ember uses Inter when it is installed and falls back to Noto Sans SC and platform Chinese fonts. Code surfaces prefer Cascadia Code, Cascadia Mono, JetBrains Mono, and platform monospace fonts. The theme does not download fonts from the network.

## Compatibility

- Minimum Obsidian version: 1.13.0
- Light and dark modes are supported
- Style Settings is optional
- The theme is pure CSS and contains no runtime remote resources

## Acknowledgements

- Some component designs were inspired by [Cupertino](https://github.com/aaaaalexis/obsidian-cupertino). Thanks to aaaaalexis for the thoughtful design work and for sharing it openly.
- Thanks to Obsidian community reviewer [saberzero1](https://github.com/saberzero1) for documenting the Obsidian 1.13 Callout color change and providing the compatibility fix in [PR #3](https://github.com/eonewg/paper-ember/pull/3).

## License

Paper Ember is released under the [MIT License](LICENSE).

---

# 简体中文

Paper Ember 是一套采用柔和纸面背景、陶土橙强调色与克制界面层级的 Obsidian 主题，支持浅色和深色模式。

![Paper Ember 主题预览](screenshot.png)

## 主要特点

- 柔和的浅色纸面与层次清楚的深色炭黑配色
- 统一的编辑视图和阅读视图排版
- 克制的标题、引用、Callout、表格与代码块设计
- 清晰的代码语法配色，兼顾浅色和深色模式
- 支持 Obsidian 原生界面字体、正文字体和等宽字体设置
- 针对 Notebook Navigator、Claudian 等常用插件进行界面适配
- 可通过 Style Settings 调整颜色、字号、行高、阅读宽度、字体、圆角和侧边栏密度

## 界面预览

![Paper Ember 任务、代码块、表格、Callout、链接与脚注预览](screenshots/showcase-details.png)

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

[Style Settings](https://github.com/mgmeyers/obsidian-style-settings) 是可选插件。安装后可以调整主题强调色、文字大小、行高、阅读宽度、字体、圆角和侧边栏密度；不安装也不影响主题正常使用。

## 字体

Obsidian 原生设置中的界面字体、正文字体和等宽字体优先于主题默认值。

未单独指定时，Paper Ember 优先使用设备上已安装的 Inter，并回退到 Noto Sans SC 和系统中文字体。代码区域优先使用 Cascadia Code、Cascadia Mono、JetBrains Mono 和系统等宽字体。主题不会联网下载字体。

## 兼容性

- 最低 Obsidian 版本：1.13.0
- 支持浅色与深色模式
- Style Settings 为可选插件
- 主题为纯 CSS，不包含运行时远程资源

## 致谢

- 部分组件设计灵感来自 [Cupertino](https://github.com/aaaaalexis/obsidian-cupertino)。感谢 aaaaalexis 的优秀设计与开源分享。
- 感谢 Obsidian 社区审查员 [saberzero1](https://github.com/saberzero1) 在 [PR #3](https://github.com/eonewg/paper-ember/pull/3) 中说明 Obsidian 1.13 的 Callout 颜色变更并提供兼容修复。

## 许可证

Paper Ember 采用 [MIT License](LICENSE) 发布。
