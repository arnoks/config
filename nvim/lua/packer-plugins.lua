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
	use 'https://tpope.io/vim/fugitive.git'	
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

end)
