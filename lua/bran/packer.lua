-- This file can be loaded by calling `lua require('plugins')` from your init.vim
print('Loading Packer Plugins')

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

--  use {
--	  'rose-pine/neovim', as = 'rose-pine',
--	  config = function()
--		  vim.cmd('colorscheme rose-pine')
--	  end
--  }

  use { "catppuccin/nvim", as = "catppuccin" }

  use {
	'nvim-treesitter/nvim-treesitter',
	run = ':TSUpdate'
  }

  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

end)

