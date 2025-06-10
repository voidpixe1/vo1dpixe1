return {
    "ibhagwan/fzf-lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        'nvim-lua/plenary.nvim'
    },
    cmd = { "FzfLua" },
    opts = {
        previewers = {
            builtin = {
                extensions = {
                    ["png"] = false,
                    ["jpg"] = false,
                    ["jpeg"] = false,
                    ["svg"] = false,
                    ["webp"] = false,
                },
            },
        },
        winopts = {
            title_pos = "left",
            border = "single",
            preview = {
                border = "single",
                layout = "flex",
                flip_columns = 90,
                title_pos = "left",
            },
        },
        fzf_colors = {
            true,
            ["fg"]       = "#d4be98",
            ["fg+"]      = "#ea6962",
            ["bg"]       = "-1",
            ["bg+"]      = "-1",
            ["hl"]       = "#a9b665",
            ["hl+"]      = "#d3869b",
            ["info"]     = "#d8a657",
            ["marker"]   = "#b0c47f",
            ["prompt"]   = "#9dc6b0",
            ["spinner"]  = "#ea6962",
            ["pointer"]  = "#ea6962",
            ["header"]   = "#d8a657",
            ["border"]   = "#d4be98",
            ["label"]    = "#a9b665",
            ["query"]    = "#9dc6b0",
        },
        fzf_opts = {
            ["--prompt"] = " ",
            ["--marker"] = "",
            ["--pointer"] = "",
            ["--separator"] = "━",
            ["--scrollbar"] = "┃",
        },
    },
    keys = {
        {
            "<leader>ff",
            function()
                require('fzf-lua').files()
            end,
            desc="[f]z[f]",
        },
        {
            "<leader>fh",
            function()
                require('fzf-lua').helptags()
            end,
            desc="[f]ind [h]elp",
        },
        {
            "<leader>fg",
            function()
                require('fzf-lua').live_grep()
            end,
            desc="[f]zf [g]rep",
        },
    },
    config = function(_, opts)
        local fzf_lua = require('fzf-lua')
        fzf_lua.setup(opts)
        fzf_lua.register_ui_select()
    end,
}

