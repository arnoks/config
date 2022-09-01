-- using system python with debugpy install as local pip 
-- require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
require('dap-python').setup('/usr/bin/python')
require('dap-python').test_runner = 'pytest'

vim.keymap.set('n','<F5>', function() return require('dap').continue() end, { noremap=true, silent=true })  
vim.keymap.set('n','<F2>', function() return require('dap').step_into() end, { noremap=true, silent=true })  
vim.keymap.set('n','<F3>', function() return require('dap').step_over() end, { noremap=true, silent=true })  
vim.keymap.set('n','<F4>', function() return require('dap').step_out() end, { noremap=true, silent=true })  

vim.keymap.set('n','<Leader>b', function() return require('dap').toggle_breakpoint() end, { noremap=true, silent=true }) 
-- vim.keymap.set('n','<Leader>B', function() return require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ') end,{ noremap=true, silent=true }) 
-- vim.keymap.set('n','<Leader>lp', function() return require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')end ,{ noremap=true, silent=true }) 
-- vim.keymap.set('n', '<Leader>dr', function return require('dap').repl.open() end ,{ noremap=true, silent=true }) 
-- vim.keymap.set('n','<Leader>dl', function() return require('dap').run_last() end ,{ noremap=true, silent=true }) 

-- vim.keymap.set('n', '<leader>dn', require'dap-python'.test_method(), { noremap=true, silent=true }) 
-- vim.keymap.set('n', '<leader>df', require'dap-python'.test_class(),  { noremap=true, silent=true }) 
-- vim.keymap.set('v', '<leader>ds', require'dap-python'.debug_selection(),{ noremap=true, silent=true }) 
