return {
	"folke/trouble.nvim",
	keys = {
		{
			"<leader>dd",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>dD",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Buffer Diagnostics (Trouble)",
		},
		{
			"<leader>ds",
			"<cmd>Trouble symbols toggle focus=false win.position=left win.width=40<cr>",
			desc = "Symbols (Trouble)",
		},
		{
			"<leader>dl",
			"<cmd>Trouble lsp toggle focus=false win.position=left<cr>",
			desc = "LSP Definitions / references / ... (Trouble)",
		},
		{
			"<leader>dL",
			"<cmd>Trouble loclist toggle<cr>",
			desc = "Location List (Trouble)",
		},
		{
			"<leader>dQ",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "Quickfix List (Trouble)",
		},
	},
	opts = {}, -- for default options, refer to the configuration section for custom setup.
}
