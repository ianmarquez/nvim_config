return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local trouble = require("trouble")
		local keymap = vim.keymap
		trouble.setup({})

		local opts = { silent = true, noremap = true }
		opts.desc = "Toggle Trouble"
		keymap.set("n", "<leader>ge", "<cmd>TroubleToggle<cr>", opts)

		opts.desc = "Toggle Trouble Workspace Diagnostics"
		keymap.set("n", "<leader>gw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)

		opts.desc = "Toggle Trouble LSP References"
		keymap.set("n", "<leader>gr", "<cmd>TroubleToggle lsp_references<cr>", opts)
	end,
}
