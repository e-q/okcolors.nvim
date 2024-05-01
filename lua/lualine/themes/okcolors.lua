local palette = require("okcolors.palette")

return {
    normal = {
        a = { bg = palette.blue, fg = palette.bg, gui = "bold" },
        b = { bg = palette.ui, fg = palette.tx },
        c = { bg = palette.bg2, fg = palette.tx },
    },
    insert = {
        a = { bg = palette.green, fg = palette.bg, gui = "bold" },
        b = { bg = palette.ui, fg = palette.tx },
        c = { bg = palette.bg2, fg = palette.tx },
    },
    visual = {
        a = { bg = palette.purple, fg = palette.bg, gui = "bold" },
        b = { bg = palette.ui, fg = palette.tx },
        c = { bg = palette.bg2, fg = palette.tx },
    },
    replace = {
        a = { bg = palette.red, fg = palette.bg, gui = "bold" },
        b = { bg = palette.ui, fg = palette.tx },
        c = { bg = palette.bg2, fg = palette.tx },
    },
    command = {
        a = { bg = palette.cyan, fg = palette.bg, gui = "bold" },
        b = { bg = palette.ui, fg = palette.tx },
        c = { bg = palette.bg2, fg = palette.tx },
    },
    inactive = {
        a = { bg = palette.ui, fg = palette.tx2, gui = "bold" },
        b = { bg = palette.ui, fg = palette.tx2 },
        c = { bg = palette.bg2, fg = palette.tx2 },
    },
}
