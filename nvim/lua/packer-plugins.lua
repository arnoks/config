return require('packer').startup(function()
	-- allow packr to manage itself
	use 'wbthomason/packer.nvim'
	-- colorscheme
	use 'gruvbox-community/gruvbox'
	-- fuzzy findercker
	use 'junegunn/fzf'
	-- Install lua reference
	use 'milisims/nvim-luaref'
	-- install plugin for fish shell syntax highlighting
	use 'khaveesh/vim-fish-syntax'
	-- git integration using fugitiv
	use 'tpope/vim-fugitive'

	-- iinstall statusline plugin
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'

	-- Language server configuration
	use 'neovim/nvim-lspconfig'
	-- enable autocompletion using cmp
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	-- For vsnip users.
	-- use 'hrsh7th/cmp-vsnip'
	-- use 'hrsh7th/vim-vsnip'

	-- For luasnip users.
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

	-- For ultisnips users.
	-- use 'SirVer/ultisnips'
	-- use 'quangnguyen30192/cmp-nvim-ultisnips'

	-- For snippy users.
	-- use 'dcampos/nvim-snippy'
	-- use 'dcampos/cmp-snippy'
	use 'chrisbra/vim-diff-enhanced'
	-- Install debugger includes client, adapter(per language) and debugger
	use 'mfussenegger/nvim-dap' -- The client
	use 'mfussenegger/nvim-dap-python' -- the adapter for python, provides defaults and setup
	use 'leoluz/nvim-dap-go'
	use 'nvim-telescope/telescope-dap.nvim'

	-- debugger UI
	use 'theHamsta/nvim-dap-virtual-text'
	use 'rcarriga/nvim-dap-ui'
	-- telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use 'BurntSushi/ripgrep'
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	-- Treesitter
	use {
	        'nvim-treesitter/nvim-treesitter',
        	run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    	}
end)
