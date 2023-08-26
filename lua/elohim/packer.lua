-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine-moon')
		end
	})
	use("neovim/nvim-lspconfig")
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use('ThePrimeagen/harpoon')
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use {
		'w0rp/ale',
		ft = { 'python', 'sh', 'rust', 'lua', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket',
			'vim', 'tex' },
		cmd = 'ALEEnable',
		config = 'vim.cmd[[ALEEnable]]'
	}
	use("windwp/nvim-autopairs")
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'neovim/nvim-lspconfig',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/vim-vsnip'
		}
	}
end)
