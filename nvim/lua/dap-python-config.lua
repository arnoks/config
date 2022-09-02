-- using system python with debugpy install as local pip
-- require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
require('dap-python').setup('/usr/bin/python')
require('dap-python').test_runner = 'pytest'

vim.keymap.set('n', '<F5>', require 'dap'.continue, { noremap = true, silent = true })
vim.keymap.set('n', '<F2>', require 'dap'.step_into, { noremap = true, silent = true })
vim.keymap.set('n', '<F3>', require 'dap'.step_over, { noremap = true, silent = true })
vim.keymap.set('n', '<F4>', require 'dap'.step_out, { noremap = true, silent = true })

vim.keymap.set('n', '<Leader>b', require('dap').toggle_breakpoint, { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>B',
  function() return require 'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end,
  { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>lp',
  function() return require 'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end,
  { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>dr', require 'dap'.repl.open, { noremap = true, silent = true })
vim.keymap.set('n', '<Leader>dl', require 'dap'.run_last, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>dn', require 'dap-python'.test_method, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>df', require 'dap-python'.test_class, { noremap = true, silent = true })
vim.keymap.set('v', '<leader>ds', require 'dap-python'.debug_selection, { noremap = true, silent = true })


-- Current default for the ui
require("dapui").setup({
  icons = { expanded = "▾", collapsed = "▸" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  -- Expand lines larger than the window
  -- Requires >= 0.7
  expand_lines = vim.fn.has("nvim-0.7"),
  -- Layouts define sections of the screen to place windows.
  -- The position can be "left", "right", "top" or "bottom".
  -- The size specifies the height/width depending on position. It can be an Int
  -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
  -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
  -- Elements are the elements shown in the layout (in order).
  -- Layouts are opened in order so that earlier layouts take priority in window sizing.
  layouts = {
    {
      elements = {
        -- Elements can be strings or table with id and size keys.
        { id = "scopes", size = 0.25 },
        "breakpoints",
        "stacks",
        "watches",
      },
      size = 40, -- 40 columns
      position = "left",
    },
    {
      elements = {
        "repl",
        "console",
      },
      size = 0.25, -- 25% of total lines
      position = "bottom",
    },
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
  }
})

--  Open Debugger UI automatically

local dap, dapui = require("dap"), require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
