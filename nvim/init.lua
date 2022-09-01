vim.o.relativenumber = true
vim.o.number = true
vim.o.splitright = true

vim.api.nvim_set_keymap('n', 'ö', 'gf', { noremap = true })
vim.api.nvim_set_keymap('n', 'Ö', '<C-]>', { noremap = true })

-- Use Crtl jkhl for moving between windows
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true })

-- Moving in tabs
vim.api.nvim_set_keymap('n', '<A-Right>', ':tabnext<Cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-Left>', ':tabprevious<Cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<A-N>', ':tabnew<Cr>', { noremap = true })

-- Enable folding
vim.o.foldmethod = 'indent'
vim.o.foldlevel = 99

-- " use space bar for folding
vim.api.nvim_set_keymap('n', '<space>', 'za', { noremap = true })

vim.g['netrw_banner'] = 0

-- use packer to install plugins for nvim
-- install plugins
require 'packer-plugins'

-- Configure gruvbox
require 'gruvbox-config'

-- lsp config
require 'lsp-config'

-- Configure autocompletion
require 'cmp-config'

-- Python debugger configuration lua/dap-python-config.lua
require 'dap-python-config' 
