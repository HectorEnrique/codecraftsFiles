vim.cmd('autocmd!')
vim.scriptencoding = 'utf-8'

local opt = vim.opt

opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.number = true
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.cmdheight = 1
opt.title = true
opt.autoindent = true
opt.laststatus = 2
opt.expandtab = true
opt.scrolloff = 4
opt.inccommand = 'split'
opt.ignorecase = true
opt.smarttab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.ai = true
opt.si = true
opt.wrap = false
opt.backspace = 'start,eol,indent'
opt.path:append { '**' }
opt.wildignore:append { '*/node_modules/*' }
opt.formatoptions:append { 'r' }

-- UI
opt.cursorline = true
opt.termguicolors = true
opt.winblend = 0
opt.wildoptions = 'pum'
vim.opt.background = 'dark'
