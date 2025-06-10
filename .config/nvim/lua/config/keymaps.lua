-- tabs
vim.keymap.set("n", "te", ":tabedit<CR>")
vim.keymap.set("n", "<M-2>", ":tabnext<CR>", { silent = true })
vim.keymap.set("n", "<M-1>", ":tabprevious<CR>", { silent = true })
vim.keymap.set("n", "tw", ":tabclose<CR>", { silent = true })

-- tree
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })

-- floating terminal
vim.keymap.set("n", "<leader>tt", ":Floaterminal<CR>", { desc = "Toggle terminal" })
