-- Starting
vim.g.mapleader = " "
vim.opt.guicursor = ""

-- Numbering
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs
-- vim.opt.tabstop = 4
-- vim.opt.softtabstop = 4
-- vim.opt.shiftwidth = 4
-- vim.opt.expandtab = true

-- Clipboard
vim.opt.clipboard = 'unnamedplus'

-- Indent
vim.opt.smartindent = true
vim.opt.breakindent = true

-- Misc
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Exit Terminal Mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc='Exit terminal mode'})

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
