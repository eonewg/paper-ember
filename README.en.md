# Paper Ember

[简体中文](README.md#简体中文)

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
