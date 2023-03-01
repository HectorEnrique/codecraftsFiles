vim.g.mapleader = ' '
local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/Decremento
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Eliminar palabra desde un punto
keymap.set('n', 'dw', 'vb"_d')

-- Seleccionar a todos
keymap.set('n', '<C-a>', 'gg<S-v>G')

vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Nueva Ventana
keymap.set('n', 'te', ':tabedit')

-- salir del modo insertar sin ESC
keymap.set('i', 'jk', '<ESC>')

-- Dividir window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Mover Ventana
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Cambiar el tamaño de ventan
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')


-- PLUGINS
-- ARBOL
keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
