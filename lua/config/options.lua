-- Leader keys must be configured before plugins are loaded.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Interface
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false

-- Files and buffers
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.updatetime = 250

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Completion menu used by built-in LSP completion
opt.completeopt = { "menu", "menuone", "noselect" }

-- Use the system clipboard
opt.clipboard = "unnamedplus"

-- Reduce the wait before which-key appears
opt.timeout = true
opt.timeoutlen = 400
