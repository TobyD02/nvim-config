local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map('n', '<C-p>', '<cmd>Telescope find_files<cr>', opts)
map('n', '<C-f>', '<cmd>Telescope live_grep<cr>', opts)
map('n', '<leader>fw', '<cmd>Telescope grep_string<cr>', opts)
map('n', '<leader>p', '<cmd>Telescope commands<cr>', opts)

vim.keymap.set('n', '<leader>nf', function()
  local dir = vim.fn.expand("%:p:h")

  vim.ui.input({ prompt = "New file (e.g. utils/helpers.go): " }, function(input)
    if not input or input == "" then return end

    local full_path = dir .. "/" .. input
    local parent_dir = vim.fn.fnamemodify(full_path, ":h")

    -- 🧠 create directories if they don't exist
    vim.fn.mkdir(parent_dir, "p")

    -- open file
    vim.cmd("edit " .. full_path)
  end)
end, { noremap = true, silent = true })
