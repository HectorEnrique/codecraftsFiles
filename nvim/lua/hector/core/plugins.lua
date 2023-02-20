local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'tpope/vim-commentary' -- comentarios cualquier lenguaje
  use 'tpope/vim-surround'
  use 'windwp/nvim-autopairs' -- autopairs
  use 'windwp/nvim-ts-autotag' -- autotags
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'kyazdani42/nvim-web-devicons' --iconos
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'onsails/lspkind-nvim' -- pictogramas como VSCode
  use 'hrsh7th/cmp-buffer' -- nvim-cmp Busca las palabras intermediarias
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp' -- Terminación
  use 'neovim/nvim-lspconfig' -- LSPConfig
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'glepnir/lspsaga.nvim' -- LSP UI
  use({
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    tag = "v<CurrentMajor>.*",
    -- install jsregexp (optional!:).
    run = "make install_jsregexp"
  })
  use 'nvim-tree/nvim-tree.lua'
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  use 'norcalli/nvim-colorizer.lua'
end)
