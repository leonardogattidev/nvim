-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local options = {
    expandtab = true,
    shiftwidth = 4,
    smartindent = true,
    autoindent = true,

    showbreak = "↳ ",

    cursorline = true,
    cursorcolumn = true,

    clipboard = "unnamedplus",
}

for key, value in pairs(options) do
    vim.opt[key] = value
end

vim.g.zig_fmt_autosave = 0
