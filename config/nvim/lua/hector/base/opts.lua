vim.cmd("autocmd!")
local opt = vim.opt

opt.number = true 

-- INDENTACION & TABS
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
-- line wrapping
opt.wrap = false
-- case sensitive
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" 
opt.backspace = "indent,eol,start"
opt.smarttab = true
opt.breakindent = true

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})
-- Agrega * en los bloques de comentarios
vim.opt.formatoptions:append { 'r' }
