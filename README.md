# OkColors.nvim

<p align="center">
  <img
    src="https://github.com/e-q/okcolors/raw/main/assets/okcolors.png"
    alt="OkColors logo"
    width="80%"
  />
</p>

OkColors is a colorscheme that mashes together ideas from a variety of sources,
including:

- [The Munsell color system](https://en.wikipedia.org/wiki/Munsell_color_system) by
  Albert. Munsell
- [The Oklab color space](https://bottosson.github.io/posts/oklab/) by Björn Ottosson
- [Earl Grey](https://earl-grey.halt.wtf) by June Kelley
- [Flexoki](https://stephango.com/flexoki) by Steph Ango
- [Rosé Pine for NeoVim](https://github.com/rose-pine/neovim) by the Rosé Pine
  developers

The palette is specified by the code at [e-q/okcolors](https://github.com/e-q/okcolors).

This NeoVim plugin provides a colorscheme that combines the OkColors palette with my
personal preferences for syntax highlighting.

Two variants are included:

- **Smooth** uses fairly uniform Chroma (saturation). All foreground/background
  combinations meet the draft WCAG 3 contrast requirement for "fluently readable" text.
- **Sharp** employs darker black tones and deeper saturation for colored
  text where possible, while maintaining readable contrast requirements.

Each variant defines light and dark versions, which are automatically set according to
`vim.o.background`.

## Installation & Configuration

**Installing with lazy.nvim**

```lua
{ "e-q/okcolors.nvim", name = "okcolors" }
```

**Selecting the default variant**

```lua
require("okcolors").setup({
    variant = "smooth", -- "smooth" or "sharp", defaults to "smooth"
})

vim.cmd("colorscheme okcolors")
-- vim.cmd("colorscheme okcolors-smooth")
-- vim.cmd("colorscheme okcolors-sharp")
```

## Screenshots

### Smooth

<p align="center">
  <img
    src="https://github.com/user-attachments/assets/1a62f6e5-0771-4283-ae53-d504f540012d"
    alt="Smooth variant, light background"
    width="793"
  />
</p>
<p align="center">
  <img
    src="https://github.com/user-attachments/assets/36322897-de1c-43fe-85c2-c48b17b3e90b"
    alt="Smooth variant, dark background"
    width="793"
  />
</p>

### Sharp

<p align="center">
  <img
    src="https://github.com/user-attachments/assets/40bb6a1b-1311-45b9-af59-da6bea24eb89"
    alt="Sharp variant, light background"
    width="793"
  />
</p>
<p align="center">
  <img
    src="https://github.com/user-attachments/assets/7aed505c-42bd-4130-8155-29fe0f6ea388"
    alt="Sharp variant, dark background"
    width="793"
  />
</p>

## Other Helpful Resources

- [WCAG 2 Color Contrast Checker](https://www.siegemedia.com/contrast-ratio)
- [Draft WCAG 3 Color Contrast Checker](https://cliambrown.com/contrast/)
- [Okhsv & Okhsl Color Pickers](https://bottosson.github.io/misc/colorpicker)
- [OKLCH Color Picker & Converter](https://oklch.com)
