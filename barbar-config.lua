local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Tab = next buffer
map('n', '<Tab>', '<Cmd>BufferNext<CR>', opts)

-- Shift+Tab = previous buffer
map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', opts)
