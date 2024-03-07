return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{ "<leader>ge", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
		{ "<leader>gw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Toggle Trouble Workspace Diagnostics" },
		{ "<leader>gr", "<cmd>TroubleToggle lsp_references<cr>", desc = "Toggle Trouble LSP References" },
	},
}
