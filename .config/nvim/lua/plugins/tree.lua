return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup({
                view = {
                    width = 20,
                    side = "left",
                    adaptive_size = true,
                },
                renderer = {
                    group_empty = true,
                    indent_markers = {
                        enable = true,
                        inline_arrows = false,
                        icons = {
                            corner = "└",
                            edge = "│",
                            item = "│",
                            bottom = "─",
                            none = " ",
                        },
                    },
                },
                filters = {
                    dotfiles = false,
                },
                diagnostics = {
                    enable = false,
                },
                git = {
                    enable = true,
                    ignore = false,
                },
                actions = {
                    open_file = {
                        resize_window = false,
                    },
                },
            })
        end,
    },
}
