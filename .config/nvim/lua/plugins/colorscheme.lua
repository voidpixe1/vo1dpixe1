return {
    {
        "sainnhe/gruvbox-material",
        config = function()
            vim.g.gruvbox_material_background = "soft"
            vim.g.gruvbox_material_foreground = "material"
            vim.g.gruvbox_material_enable_italic = false
            vim.g.gruvbox_material_enable_bold = true
            vim.g.gruvbox_material_transparent_background = 1

            vim.g.gruvbox_material_disable_terminal_colors = false

            vim.g.gruvbox_material_visual = "blue background"

            vim.cmd("colorscheme gruvbox-material")
        end
    },
    {
        'luisiacc/the-matrix.nvim'
    },
    {
        "rebelot/kanagawa.nvim",
    }
}
