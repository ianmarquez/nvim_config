return {
	"romgrk/barbar.nvim", -- tab navigation
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VimEnter",
	keys = {
		{ "<leader>to", "<cmd>BufferOrderByDirectory<cr>", desc = "Order Buffer By Directory", mode = "n" },
		{ "<S-l>", "<cmd>BufferNext<cr>", desc = "Next Buffer", mode = "n" },
		{ "<S-h>", "<cmd>BufferPrev<cr>", desc = "Previous Buffer", mode = "n" },
		{
			"<leader>tc",
			"<cmd>BufferCloseAllButCurrentOrPinned<cr>",
			desc = "Close All Buffers But Current or Pinned",
			mode = "n",
		},
		{ "<leader>ta", "<cmd>BufferWipeout<cr>", desc = "Close all open buffers", mode = "n" },
		{ "<leader>tx", "<cmd>BufferClose<cr>", desc = "Close Current Buffer", mode = "n" },
		{ "<leader>tf", "<cmd>BufferClose!<cr>", desc = "Force Close Current Buffer", mode = "n" },
		{ "<leader>tp", "<cmd>BufferPin<cr>", desc = "Pin Current Buffer", mode = "n" },
	},
	config = function()
		local barbar = require("barbar")
		barbar.setup({
			clickable = false,
			animation = false,
			highlight_visible = true,
			highlight_alternate = false,
			maximum_padding = 1,
			insert_at_start = true,
			tab_pages = true,
			icons = {
				pinned = { button = "󰐃", filename = true },
			},
			sidebar_filetypes = {
				NvimTree = true,
				undotree = { text = "undotree" },
				DiffviewFiles = true,
			},
		})
	end,
}
