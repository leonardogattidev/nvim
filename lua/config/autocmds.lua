-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local start_godot = function()
    vim.lsp.start({
        name = "godot_lsp",
        cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
        filetypes = { "gdscript" },
        root_dir = vim.fs.dirname(vim.fs.find({ "project.godot", ".git" }, { upward = true })[1]),
        on_attach = function()
            vim.api.nvim_command('echo serverstart("/tmp/godot.pipe")')
        end,
    })
end

vim.api.nvim_create_autocmd({ "BufEnter" }, {
    pattern = { "*.gd" },
    callback = start_godot,
})
