return {
    {
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
}
