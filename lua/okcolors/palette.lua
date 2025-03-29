local options = require("okcolors.config").options

local function read_json_file(file_name)
    local plugin_root = vim.fn.expand("<sfile>:p:h:h")
    local resolved_path = vim.fn.resolve(plugin_root .. "/data/" .. file_name)
    if not vim.startswith(resolved_path, plugin_root) then
        error("Attempted to access file outside plugin directory")
    end
    local content = vim.fn.readfile(resolved_path)
    local json_string = table.concat(content)
    return vim.fn.json_decode(json_string)
end

local variants = {
    smooth = read_json_file("okcolors-smooth.json"),
    sharp = read_json_file("okcolors-sharp.json"),
}

local colorscheme
if variants[options.variant] ~= nil then
    colorscheme = variants[options.variant]
else
    colorscheme = variants.smooth
end

local palette
if vim.o.background == "light" then
    palette = colorscheme.light
else
    palette = colorscheme.dark
end

return palette
