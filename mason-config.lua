---- Key Maps
-- Open indicated errors with `\d`
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf, silent = true }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- get definition, i.e. `gd` when hovering over a method goes to where its declared
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts) -- get references, i.e. `gr` when hovering over a method lists the references (Ctrl + W -> j -> :q to close)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- hover docs - `Shift + K` shows docs for method
  end,
})

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"pyright",
		"rust_analyzer",
		"gopls",
		"lua_ls",
		"ts_ls",
		"intelephense",
		"docker_compose_language_service",
	}
})
