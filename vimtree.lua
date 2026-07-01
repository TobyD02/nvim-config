vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 50,
	side = "left"
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
	git_ignored = false,
	custom = {},
	exclude = {},
  },
})

vim.keymap.set("n", "<leader>e", function()
  require("nvim-tree.api").tree.toggle()
end)
