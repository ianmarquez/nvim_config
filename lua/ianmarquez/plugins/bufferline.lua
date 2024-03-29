return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "VimEnter",
	keys = {
		{ "<leader>to", "<cmd>BufferLineSortByTabs<cr>", desc = "Order Buffer By Directory", mode = "n" },
		{ "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer", mode = "n" },
		{ "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous Buffer", mode = "n" },
		{
			"<leader>tc",
			"<cmd>BufferLineCloseOthers<cr>",
			desc = "Close All Buffers But Current or Pinned",
			mode = "n",
		},
		{ "<leader>tx", "<cmd>BufferLinePickClose<cr>", desc = "Close Buffer by Ordinal", mode = "n" },
		-- 		{ "<leader>tf", "<cmd>BufferClose!<cr>", desc = "Force Close Current Buffer", mode = "n" },
		{ "<leader>tp", "<cmd>BufferLineTogglePin<cr>", desc = "Pin Current Buffer", mode = "n" },
	},
	config = function()
		local bufferline = require("bufferline")
		bufferline.setup({
			options = {
				diagnostics = "nvim_lsp",
				show_buffer_close_icons = false,
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "center",
					},
				},
			},
		})
	end,
}
