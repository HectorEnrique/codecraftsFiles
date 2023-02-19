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

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- add list of plugins to install
return packer.startup(function(use)
	-- packer can manage itself

	use("wbthomason/packer.nvim")

	-- COLORSCHEME --
	use("svrana/neosolarized.nvim")
	use("tjdevries/colorbuddy.nvim")

	-- LINEA GUIA
	use("nvim-lualine/lualine.nvim")

	--EXPLORADOR DE ARCHIVOS
	use("nvim-tree/nvim-tree.lua")

	-- COMENTARIOS
	use("numToStr/Comment.nvim")

	--ICONOS
	use("kyazdani42/nvim-web-devicons")

	-- LSPCONFIG
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovim's built-in LSP
	use("hrsh7th/nvim-cmp")
	use("onsails/lspkind-nvim")
	use("L3MON4D3/LuaSnip")

	-- MASON
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/typescript.nvim")

	--NULL-LS FORMATTER
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")
	use("nvim-lua/plenary.nvim")

	--TREESETTIER
	use({
		"nvim-treesitter/nvim-treesitter",
		run = "TSUpdate",
	})
	-- ARCHIVOS TOP (arriba)
	use("akinsho/bufferline.nvim")
	use("norcalli/nvim-colorizer.lua")

	-- VENTANA UI
	use("glepnir/lspsaga.nvim")

	-- AUTO TAGS
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
