require("conform").setup({
	formatters_by_ft = {
		-- Lua
		lua = { "stylua" },

		-- Go
		go = { "gofmt" },

		-- Rust
		rust = { "rustfmt" },

		-- Python
		python = { "isort", "black" },
		-- or:
		-- python = { "ruff_format" },

		-- JavaScript / TypeScript
		javascript = { "prettierd", "prettier", stop_after_first = true },
		javascriptreact = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		typescriptreact = { "prettierd", "prettier", stop_after_first = true },

		-- Web
		html = { "prettierd", "prettier", stop_after_first = true },
		css = { "prettierd", "prettier", stop_after_first = true },
		scss = { "prettierd", "prettier", stop_after_first = true },

		-- Data
		json = { "prettierd", "prettier", stop_after_first = true },
		jsonc = { "prettierd", "prettier", stop_after_first = true },
		yaml = { "prettierd", "prettier", stop_after_first = true },
		markdown = { "prettierd", "prettier", stop_after_first = true },
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
