return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = { window = { position = "right" } },
    },
    {
        "folke/snacks.nvim",
        opts = {
            picker = {
                sources = {
                    explorer = {
                        layout = {
                            layout = {
                                position = "right",
                            },
                        },
                    },
                },
            },
        },
    },
}
