return {
    {
        "neovim/nvim-lspconfig",
        -- -@class PluginLspOpts
        opts = {
            -- -@type lspconfig.options
            servers = {
                -- -@type _.lspconfig.options
                zls = {
                    mason = false,
                    -- TODO: make it build from source instead of fetching prebuilt bin
                },
                clangd = {
                    cmd = {
                        "clangd",
                        "--background-index",
                        "--clang-tidy",
                        "--header-insertion=iwyu",
                        "--completion-style=detailed",
                        "--function-arg-placeholders",
                        "--fallback-style=llvm",
                        -- "-std=c++23",
                        -- "-log=verbose",
                        "--query-driver=/nix/store/hnfkms9dykvh61nwdqydzmbgzzr5lwy0-clang-wrapper-18.1.8/bin/clang,/nix/store/hnfkms9dykvh61nwdqydzmbgzzr5lwy0-clang-wrapper-18.1.8/bin/clang++",
                    },
                },
            },
        },
    },
}
