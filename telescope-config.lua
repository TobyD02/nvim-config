local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<C-p>', '<cmd>Telescope find_files<cr>', opts)
map('n', '<C-f>', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fw', '<cmd>Telescope grep_string<cr>', opts)
map('n', '<leader>p', '<cmd>Telescope commands<cr>', opts)

map('n', '<leader>nf', function()
  local dir = vim.fn.expand("%:p:h")

  vim.ui.input({ prompt = "New file: " }, function(input)
    if not input or input == "" then return end

    local path = dir .. "/" .. input
    vim.cmd("edit " .. path)
  end)
end, opts)
