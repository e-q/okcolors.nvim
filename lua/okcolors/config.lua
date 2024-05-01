---@alias Variant "smooth" | "sharp"

local config = {}

---@class Options
config.options = {
    ---Set the desired variant
    ---@type  Variant
    variant = "smooth",
}

---@param options Options | nil
function config.extend_options(options)
    config.options = vim.tbl_deep_extend("force", config.options, options or {})
end



return config
