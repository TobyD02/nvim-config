local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<C-p>', '<cmd>Telescope find_files<cr>', opts)
map('n', '<C-f>', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fw', '<cmd>Telescope grep_string<cr>', opts)
map('n', '<leader>p', '<cmd>Telescope commands<cr>', opts)
