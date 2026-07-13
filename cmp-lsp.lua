local cmp = require("cmp")

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},

	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),

	sources = {
		{ name = "nvim_lsp" },
		{ name = "vsnip" },
		{ name = "buffer" },
		{ name = "path" },
	},
})

-- LSP capabilities (needed for completion integration)
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- helper (reuse this for each LSP)
local function lsp(server, opts)
	opts = opts or {}
	opts.capabilities = capabilities
	vim.lsp.config(server, opts)
	vim.lsp.enable(server)
end

-- Search completion (/ and ?)
cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" }
	}
})

-- Command-line completion (:)
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" }
	}, {
		{ name = "cmdline" }
	})
})

-- EXAMPLE servers (replace/remove as needed)
lsp("lua_ls", {
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "love" },
			},
			workspace = {
				library = {
					[vim.fn.expand("~/.local/share/love2d-library")] = true,
				},
			},
		},
	},
})

lsp("pyright")
lsp("ts_ls")
lsp("rust_analyzer")
lsp("intelephense")
lsp("docker_compose_language_service", {
	filetypes = { "yaml", "yaml.docker-compose" },
})
lsp("html")
lsp("jsonls")

-- Go Stuff
--- Setup LSP settings
lsp("gopls", {
	settings = {
		gopls = {
			completeUnimported = true,
			usePlaceholders = true,
			analyses = {
				unusedparams = true,
				shadow = true,
			},
			staticcheck = true,
		},
	},
})


-- Specific golang on save format
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		vim.lsp.buf.format({ async = false })
		vim.lsp.buf.code_action({
			context = { only = { "source.organizeImports" } },
			apply = true,
		})
	end,
})
