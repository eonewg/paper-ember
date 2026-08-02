# Paper Ember

[English](README.en.md)

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
