local M = {}
local config = require("okcolors.config")

local function set_highlights()
    local highlight_groups = require("okcolors.highlights").get_highlight_groups()

    for _, highlights in pairs(highlight_groups) do
        for group, highlight in pairs(highlights) do
            vim.api.nvim_set_hl(0, group, highlight)
        end
    end
end


---@param variant Variant | nil
function M.colorscheme(variant)
    config.extend_options({ variant = variant })

    vim.opt.termguicolors = true
    if vim.g.colors_name then
        vim.cmd("hi clear")
        vim.cmd("syntax reset")
    end
    vim.g.colors_name = "okcolors"

    set_highlights()
end

---@param options Options
function M.setup(options)
    config.extend_options(options or {})
end

return M
