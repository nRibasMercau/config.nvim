vim.encoding = utf8

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.showmode = false -- Don't show mode, it's already in lua line

vim.opt.clipboard = 'unnamedplus' -- Sync clipboards nvim and OS

-- Indent
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.wrap = false

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true -- Case-insensitive search, unless specified with \C
vim.opt.smartcase = true

-- Update time
vim.o.updatetime = 250
--vim.o.signcolumn = 'yes'

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.cursorline = true

-- Window splitting
vim.opt.splitright = true
vim.opt.splitbelow = true
