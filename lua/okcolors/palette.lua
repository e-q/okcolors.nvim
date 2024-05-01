local options = require("okcolors.config").options

local raw_palettes = {
    base_hue90 = {
        base_20 = "#181611",
        base_25 = "#23211c",
        base_30 = "#302e28",
        base_35 = "#3c3a35",
        base_40 = "#4a4842",
        base_45 = "#57554f",
        base_55 = "#74716b",
        base_65 = "#918f88",
        base_75 = "#b0aea7",
        base_80 = "#c0bdb7",
        base_85 = "#d0cec7",
        base_90 = "#e0ded7",
        base_95 = "#f1eee7",
        base_99 = "#fefcf4",
    },
    smooth = {
        blue_dark    = "#337a9e",
        blue_lite    = "#5398be",
        cyan_dark    = "#128184",
        cyan_lite    = "#3ea0a3",
        green_dark   = "#398261",
        green_lite   = "#58a07e",
        magenta_dark = "#b92e91",
        magenta_lite = "#dc51b1",
        orange_dark  = "#9a623c",
        orange_lite  = "#ba8059",
        purple_dark  = "#7f639b",
        purple_lite  = "#9d81bb",
        red_dark     = "#cc2443",
        red_lite     = "#f04b5f",
        yellow_dark  = "#866f2c",
        yellow_lite  = "#a48d4b",
    },
    sharp = {
        blue_dark    = "#0b5d80",
        blue_lite    = "#45bbf4",
        cyan_dark    = "#075f61",
        cyan_lite    = "#24c5ca",
        green_dark   = "#106243",
        green_lite   = "#33cb90",
        magenta_dark = "#940a72",
        magenta_lite = "#f67ccd",
        orange_dark  = "#824208",
        orange_lite  = "#f79045",
        purple_dark  = "#741baf",
        purple_lite  = "#c692fb",
        red_dark     = "#9c1831",
        red_lite     = "#fb868b",
        yellow_dark  = "#68530b",
        yellow_lite  = "#d2a920",
    },
}

local base_palette = raw_palettes.base_hue90
local color_palette
if raw_palettes[options.variant] ~= nil then
    color_palette = raw_palettes[options.variant]
else
    color_palette = raw_palettes.smooth
end

local palette
if vim.o.background == "light" then
    palette = {
        bg      = base_palette.base_99,
        bg2     = base_palette.base_95,
        bg3     = base_palette.base_85,
        ui      = base_palette.base_80,
        ui2     = base_palette.base_75,
        ui3     = base_palette.base_65,
        tx3     = base_palette.base_55,
        tx2     = base_palette.base_45,
        tx      = base_palette.base_30,

        blue    = color_palette.blue_dark,
        cyan    = color_palette.cyan_dark,
        green   = color_palette.green_dark,
        magenta = color_palette.magenta_dark,
        orange  = color_palette.orange_dark,
        purple  = color_palette.purple_dark,
        red     = color_palette.red_dark,
        yellow  = color_palette.yellow_dark,
    }
else
    palette = {
        bg      = base_palette.base_20,
        bg2     = base_palette.base_25,
        bg3     = base_palette.base_35,
        ui      = base_palette.base_40,
        ui2     = base_palette.base_45,
        ui3     = base_palette.base_55,
        tx3     = base_palette.base_65,
        tx2     = base_palette.base_75,
        tx      = base_palette.base_90,

        blue    = color_palette.blue_lite,
        cyan    = color_palette.cyan_lite,
        green   = color_palette.green_lite,
        magenta = color_palette.magenta_lite,
        orange  = color_palette.orange_lite,
        purple  = color_palette.purple_lite,
        red     = color_palette.red_lite,
        yellow  = color_palette.yellow_lite,
    }
end

return palette
