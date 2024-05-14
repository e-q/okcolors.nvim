local options = require("okcolors.config").options

local base_tones = {
    base_05 = "#010102",
    base_20 = "#16151a",
    base_25 = "#212126",
    base_30 = "#2e2d31",
    base_35 = "#3b3a3e",
    base_40 = "#48474a",
    base_45 = "#565557",
    base_55 = "#727172",
    base_65 = "#908f8e",
    base_75 = "#afadab",
    base_80 = "#bfbdba",
    base_85 = "#d0cdc9",
    base_90 = "#e0ded8",
    base_95 = "#f1eee8",
    base_99 = "#fefcf4",
}

local base_palettes = {
    smooth = {
        light = {
            bg         = base_tones.base_99,
            surface    = base_tones.base_95,
            overlay    = base_tones.base_90,
            hilite_lo  = base_tones.base_85,
            hilite_med = base_tones.base_80,
            hilite_hi  = base_tones.base_75,
            muted      = base_tones.base_55,
            subtle     = base_tones.base_45,
            tx         = base_tones.base_30,
        },
        dark = {
            bg         = base_tones.base_20,
            surface    = base_tones.base_25,
            overlay    = base_tones.base_30,
            hilite_lo  = base_tones.base_35,
            hilite_med = base_tones.base_40,
            hilite_hi  = base_tones.base_45,
            muted      = base_tones.base_65,
            subtle     = base_tones.base_75,
            tx         = base_tones.base_90,
        }
    },
    sharp = {
        light = {
            bg         = base_tones.base_99,
            surface    = base_tones.base_95,
            overlay    = base_tones.base_90,
            hilite_lo  = base_tones.base_85,
            hilite_med = base_tones.base_80,
            hilite_hi  = base_tones.base_75,
            muted      = base_tones.base_45,
            subtle     = base_tones.base_35,
            tx         = base_tones.base_05,
        },
        dark = {
            bg         = base_tones.base_05,
            surface    = base_tones.base_20,
            overlay    = base_tones.base_25,
            hilite_lo  = base_tones.base_30,
            hilite_med = base_tones.base_35,
            hilite_hi  = base_tones.base_40,
            muted      = base_tones.base_75,
            subtle     = base_tones.base_85,
            tx         = base_tones.base_99,
        }
    },
}

local variant_palettes = {
    smooth = {
        blue_dark    = "#267aa3",
        blue_lite    = "#73c2ee",
        cyan_dark    = "#128184",
        cyan_lite    = "#5ecbce",
        green_dark   = "#2e835f",
        green_lite   = "#79cca4",
        magenta_dark = "#b92e91",
        magenta_lite = "#ff88d6",
        orange_dark  = "#9e6034",
        orange_lite  = "#eaa679",
        purple_dark  = "#8061a0",
        purple_lite  = "#c7a7ea",
        red_dark     = "#cc2443",
        red_lite     = "#ff9498",
        yellow_dark  = "#886e1f",
        yellow_lite  = "#d0b56a"
    },
    sharp = {
        blue_dark    = "#0a7caa",
        blue_lite    = "#5cc6fc",
        cyan_dark    = "#0c8285",
        cyan_lite    = "#19d2d7",
        green_dark   = "#17865d",
        green_lite   = "#24d998",
        magenta_dark = "#c30d97",
        magenta_lite = "#fb8ed5",
        orange_dark  = "#ad5707",
        orange_lite  = "#fd9f5e",
        purple_dark  = "#9a21e8",
        purple_lite  = "#cea1fd",
        red_dark     = "#d01a41",
        red_lite     = "#fe989b",
        yellow_dark  = "#8b6e09",
        yellow_lite  = "#e0b316"
    },
}

local base_palette
local color_palette
if variant_palettes[options.variant] ~= nil then
    base_palette = base_palettes[options.variant]
    color_palette = variant_palettes[options.variant]
else
    base_palette = base_palettes.smooth
    color_palette = variant_palettes.smooth
end

local palette
if vim.o.background == "light" then
    palette = vim.tbl_extend("error",
        base_palette.light,
        {
            blue    = color_palette.blue_dark,
            cyan    = color_palette.cyan_dark,
            green   = color_palette.green_dark,
            magenta = color_palette.magenta_dark,
            orange  = color_palette.orange_dark,
            purple  = color_palette.purple_dark,
            red     = color_palette.red_dark,
            yellow  = color_palette.yellow_dark,
        })
else
    palette = vim.tbl_extend("error",
        base_palette.dark,
        {
            blue    = color_palette.blue_lite,
            cyan    = color_palette.cyan_lite,
            green   = color_palette.green_lite,
            magenta = color_palette.magenta_lite,
            orange  = color_palette.orange_lite,
            purple  = color_palette.purple_lite,
            red     = color_palette.red_lite,
            yellow  = color_palette.yellow_lite,
        })
end

return palette
