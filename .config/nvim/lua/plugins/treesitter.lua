return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { 'nvim-lua/plenary.nvim' },
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "java",
                "qmljs",
                "qmldir",
                "javascript",
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "elixir",
                "heex",
                "html",
                "css",
                "python",
                "go"
            },
            sync_install = false,
            highlight = {
                enable = true
            },
            indent = {
                enable = true
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Return>",
                    node_incremental = "<Return>",
                    scope_incremental = false,
                    node_decremental = "<Backspace>",
                },
            },
        })
    end
}
