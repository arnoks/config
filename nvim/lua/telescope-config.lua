-- Configuration for Telescope
local opts = { noremap = true, silent = true }

-- Using Lua functions without parentesis
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files, opts)
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep, opts)
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers, opts)
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags, opts)
