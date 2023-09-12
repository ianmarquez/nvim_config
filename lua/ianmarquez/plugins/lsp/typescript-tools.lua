return {
	"pmizio/typescript-tools.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	opts = {},
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local typescript_tools = require("typescript-tools")
		local opts = { noremap = true, silent = true }
		typescript_tools.setup({
			on_attach = function(client, bufnr)
				opts.buffer = bufnr
				local keymap = vim.keymap

				opts.desc = "Order Imports"
				keymap.set("n", "<leader>oi", ":TSToolsOrganizeImports<cr>", opts) -- orders imports

				opts.desc = "Remove Unused"
				keymap.set("n", "<leader>ru", ":TSToolsRemoveUnused<cr>", opts) -- remove unused imports
			end,
			settings = {
				tsserver_file_preferences = {
					includeInlayParameterNameHints = "all",
					includeCompletionsForModuleExports = true,
					quotePreference = "auto",
				},
				tsserver_format_options = {
					allowIncompleteCompletions = false,
					allowRenameOfImportPath = false,
				},
			},
		})
	end,
}