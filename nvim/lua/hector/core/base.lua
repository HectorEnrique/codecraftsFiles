vim.g.mapleader = " "
local opt = vim.opt

--CORE
vim.wo.number = true
opt.title = true
opt.autoindent = true
opt.laststatus = 2
opt.showcmd = true
opt.cmdheight = 1
opt.expandtab = true
opt.scrolloff = 6
opt.ignorecase = true
opt.breakindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.wrap = false
opt.formatoptions:append { 'r' }

--vim.opt.cursorline = true
opt.termguicolors = true
opt.winblend = 0
opt.wildoptions = 'pum'
opt.pumblend = 5
opt.background = 'dark'
