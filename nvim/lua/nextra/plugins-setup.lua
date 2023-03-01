-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  use("wbthomason/packer.nvim")

  -- PLUGINS TO USE
  use "EdenEast/nightfox.nvim" -- Tema / Theme

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  } -- Línea de estado / Status Line

  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion

  --LSP
  use 'neovim/nvim-lspconfig' -- LSP para lenguajes de alto nivel / LSP for high level languages
  use("jose-elias-alvarez/typescript.nvim")

  --MASON
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  --SAGA
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    requires = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  })

  -- TREE LIKE VSCODE / ARBOL COMO VSCODE
  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }
  -- snipets
  use 'L3MON4D3/LuaSnip'

  -- Color de sintaxis
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  --CERRAR llaves/corchetes etc. + indentación
  use 'windwp/nvim-autopairs'
  use { "windwp/nvim-ts-autotag", after = "nvim-treesitter" }

  -- COMENTARIOS
  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }

  -- envuelve caracteres y mas
  use("tpope/vim-surround")

  -- LINEA GUÍA
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

  --muestra el color Hexa
  use 'norcalli/nvim-colorizer.lua'

  if packer_bootstrap then
    require("packer").sync()
  end
end)
