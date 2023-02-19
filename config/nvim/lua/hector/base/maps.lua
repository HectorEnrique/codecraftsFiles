vim.g.mapleader = " "
vim.opt.scrolloff = 10
local keymap = vim.keymap

keymap.set('n', 'x', '"_x')
keymap.set('i', 'jk', '<ESC>')

-- Incremento & Decremento
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Seleccionar todo
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Nuevo tab
keymap.set('n', 'te', ':tabedit')

-- Dividir ventana
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Mover hacia una ventana
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Cambiar tamaño de una venta
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- PLUGINS MAPS --
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") 
