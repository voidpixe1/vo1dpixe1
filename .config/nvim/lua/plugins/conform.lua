return {
    "stevearc/conform.nvim",
    opts = {
        formatter_by_ft = {
            lua = {
                "stylua",
            },
            python = {
                "isort",
                "black",
            },
        },
    },
}
