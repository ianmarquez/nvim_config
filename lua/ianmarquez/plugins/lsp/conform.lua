return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javescript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },

				sql = { "sql_formatter" },

				go = { "goimports", "gofmt", "golines" },

				lua = { "stylua" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = true,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mf", function()
			conform.format({
				async = true,
				lsp_fallback = true,
			})
		end, { desc = "Format current selection" })
	end,
}
