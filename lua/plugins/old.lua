if true then
  return {}
end
return {
  {
    -- neorg
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                main = "~/brain/neorg/",
              },
            },
          },
        },
      })
    end,
  },
  { "ziglang/zig.vim" },
  { "tikhomirov/vim-glsl" },
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
  {
    -- godot dap
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      dap.adapters.godot = {
        type = "server",
        host = "127.0.0.1",
        port = 6006,
      }
      dap.configurations.gdscript = {
        {
          type = "godot",
          request = "launch",
          name = "Launch scene",
          project = vim.fs.dirname(vim.fs.find({ "project.godot", ".git" }, { upward = true })[1]),
          launch_scene = true,
        },
      }
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = { window = { position = "right" } },
  },
}
