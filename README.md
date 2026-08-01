# Claudy Obsidian

[中文](#中文) · [English](#english)

## 中文

一套采用柔和纸面背景、陶土橙强调色和克制界面层级的 Obsidian 主题，支持浅色与深色模式。

### 特点

- 柔和的浅色纸面与深色炭黑配色
- 统一的编辑视图和阅读视图样式
- 克制的标题、引用、Callout、表格与代码块设计
- 支持 Obsidian 原生界面、正文和等宽字体设置
- 内置 Inter Variable 与 Noto Sans SC Variable 字体
- 可通过 Style Settings 调整颜色、字号、行高、阅读宽度、字体、圆角和侧边栏密度

### 安装

1. 从 [Releases](https://github.com/eonewg/claudy-obsidian/releases) 下载主题压缩包并解压。
2. 将其中的 `Claudy Obsidian` 文件夹复制到仓库的 `.obsidian/themes/` 目录。
3. 打开 Obsidian → 设置 → 外观，在主题列表中选择 `Claudy Obsidian`。
4. 如果主题没有立即出现，请重新打开“外观”页面或重启 Obsidian。

最终目录应类似：

```text
你的仓库/.obsidian/themes/Claudy Obsidian/
├─ manifest.json
├─ theme.css
└─ fonts/
```

### 字体

Obsidian 原生设置中的界面字体、正文字体和等宽字体优先于主题默认值。

未指定原生字体时，主题使用内置字体：

- 英文和数字：Inter Variable
- 中文：Noto Sans SC Variable

主题运行时不会联网下载字体。Inter 与 Noto Sans SC 分别遵循 `fonts/Inter-OFL.txt` 和 `fonts/OFL.txt` 中的 SIL Open Font License 1.1。

### 兼容性

- 最低 Obsidian 版本：1.8.0
- Style Settings 为可选插件；不安装也可正常使用主题

### 许可证

主题源码采用 [MIT License](LICENSE)。随主题提供的字体使用各自的 SIL Open Font License 1.1。

## English

An Obsidian theme with soft paper-like backgrounds, restrained terracotta accents, and a calm visual hierarchy. Both light and dark modes are supported.

### Features

- Soft paper tones in light mode and a gentle charcoal palette in dark mode
- Consistent styling across editing and reading views
- Restrained headings, blockquotes, callouts, tables, and code blocks
- Support for Obsidian's native interface, text, and monospace font settings
- Bundled Inter Variable and Noto Sans SC Variable fonts
- Optional Style Settings controls for colors, font size, line height, reading width, fonts, radii, and sidebar density

### Installation

1. Download and extract the theme archive from [Releases](https://github.com/eonewg/claudy-obsidian/releases).
2. Copy the extracted `Claudy Obsidian` folder to your vault's `.obsidian/themes/` directory.
3. Open Obsidian → Settings → Appearance, then select `Claudy Obsidian` from the theme list.
4. If the theme does not appear immediately, reopen the Appearance page or restart Obsidian.

The final directory should look like this:

```text
your-vault/.obsidian/themes/Claudy Obsidian/
├─ manifest.json
├─ theme.css
└─ fonts/
```

### Fonts

Fonts selected in Obsidian's native interface, text, and monospace font settings take priority over the theme defaults.

When no native font is selected, the theme uses its bundled fonts:

- English text and numerals: Inter Variable
- Chinese text: Noto Sans SC Variable

The theme does not download fonts at runtime. Inter and Noto Sans SC are distributed under the SIL Open Font License 1.1 included in `fonts/Inter-OFL.txt` and `fonts/OFL.txt`.

### Compatibility

- Minimum Obsidian version: 1.8.0
- Style Settings is optional; the theme works without it

### License

The theme source is released under the [MIT License](LICENSE). Bundled fonts remain under their respective SIL Open Font License 1.1 terms.
