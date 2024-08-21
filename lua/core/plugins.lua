local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-lualine/lualine.nvim'
	use 
	{
		'akinsho/bufferline.nvim',
		tag = "*",
		requires = 'nvim-tree/nvim-web-devicons'
	} 
	use 'nvim-lua/plenary.nvim'
	use 
  	{
		'nvim-telescope/telescope.nvim',
  	    tag = '0.1.6',
  	    requires = { {'nvim-lua/plenary.nvim'} }
  	}
  	use 
  	{
  	    "folke/noice.nvim",
  	    requires = 
  	    {
  	  	"MunifTanjim/nui.nvim",
  	  	"rcarriga/nvim-notify",
  	    }  
  	}
  	use 
  	{
  	    'williamboman/mason.nvim',
  	    run = ":MasonUpdate"
  	}
  	use 'nvim-treesitter/nvim-treesitter'
  	use 'neovim/nvim-lspconfig'
  	use 'hrsh7th/cmp-nvim-lsp'
  	use 'hrsh7th/cmp-buffer'
  	use 'hrsh7th/cmp-path'
  	use 'hrsh7th/cmp-cmdline'
  	use 'hrsh7th/nvim-cmp'
  	use 
	{
  	    'L3MON4D3/LuaSnip',
  	    dependencies = 
  	    {
			'saadparwaiz1/cmp_luasnip',
			'rafamadriz/friendly-snippets',
  	    }
  	}
  	use 'tpope/vim-surround'
  	use 
  	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
  	}
	use
	{
		"epwalsh/obsidian.nvim",
		tag = "*", 
		requires = {
			"nvim-lua/plenary.nvim",
		},
	}
	use 'andweeb/presence.nvim'
	use '42Paris/42header'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
