-- Set endentation to 4 spaces
vim.opt.expandtab=true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- virutaledit
--vim.opt.virtualedit = "block"

-- Smart tabs and things
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- backspace
vim.opt.backspace = {"start", "eol", "indent"}

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- wrapping
vim.opt.wrap = false

-- break indent
vim.opt.breakindent = true

-- line break
vim.opt.linebreak = true

-- line numbers --
vim.opt.number = true
vim.opt.relativenumber = true

-- Show line under cursor
vim.opt.cursorline = true

-- Store undos between sessions
vim.opt.undofile = true

-- show mode in command line or not (not for custom status lines)
vim.opt.showmode = true

-- Case insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- lines visible around cursor
vim.opt.scrolloff = 7

-- cursor at same posn after closing window
vim.opt.splitkeep = "cursor"
