local palette = require("okcolors.palette")

return {
    normal = {
        a = { bg = palette.blue, fg = palette.bg, gui = "bold" },
        b = { bg = palette.overlay, fg = palette.tx },
        c = { bg = palette.surface, fg = palette.tx },
    },
    insert = {
        a = { bg = palette.green, fg = palette.bg, gui = "bold" },
        b = { bg = palette.overlay, fg = palette.tx },
        c = { bg = palette.surface, fg = palette.tx },
    },
    visual = {
        a = { bg = palette.purple, fg = palette.bg, gui = "bold" },
        b = { bg = palette.overlay, fg = palette.tx },
        c = { bg = palette.surface, fg = palette.tx },
    },
    replace = {
        a = { bg = palette.red, fg = palette.bg, gui = "bold" },
        b = { bg = palette.overlay, fg = palette.tx },
        c = { bg = palette.surface, fg = palette.tx },
    },
    command = {
        a = { bg = palette.cyan, fg = palette.bg, gui = "bold" },
        b = { bg = palette.overlay, fg = palette.tx },
        c = { bg = palette.surface, fg = palette.tx },
    },
    inactive = {
        a = { bg = palette.overlay, fg = palette.subtle, gui = "bold" },
        b = { bg = palette.overlay, fg = palette.subtle },
        c = { bg = palette.surface, fg = palette.subtle },
    },
}
