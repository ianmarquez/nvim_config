return {
	"nvimtools/none-ls.nvim", -- configure formatters & linters
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		-- import null-ls plugin
		local none_ls = require("null-ls")
		local eslint_d = require("none-ls.diagnostics.eslint_d")
		local none_ls_utils = require("null-ls.utils")

		-- for conciseness
		local formatting = none_ls.builtins.formatting -- to setup formatters

		-- to setup format on save
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		none_ls.setup({
			-- add package.json as identifier for root (for typescript monorepos)
			root_dir = none_ls_utils.root_pattern(".null-ls-root", "Makefile", ".git", "package.json"),
			-- setup formatters & linters
			sources = {
				formatting.prettier.with({
					extra_filetypes = { "svelte" },
				}), -- js/ts formatter
				formatting.stylua, -- lua formatter
				eslint_d,
				none_ls.builtins.formatting.gofumpt,
				none_ls.builtins.formatting.goimports,
				none_ls.builtins.formatting.golines,
			},
			-- configure format on save
			on_attach = function(current_client, bufnr)
				if current_client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								filter = function(client)
									return client.name == "null-ls"
								end,
								bufnr = bufnr,
							})
						end,
					})
				end
			end,
		})
	end,
}
