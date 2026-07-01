require("kulala").setup({})

vim.keymap.set("n", "<leader>rr", function()
	require("kulala").run()
end, {desc = "Run HTTP request under cursor"})


vim.keymap.set("n", "<leader>ra", function()
	require("kulala").run_all()
end, {desc = "Run HTTP all HTTP requests"})

vim.keymap.set("n", "<leader>ro", function()
	require("kulala").open()
end, {desc = "Open Kulala UI"})

