return {
	"romgrk/barbar.nvim", -- tab navigation
	dependencies = { "nvim-tree/nvim-web-devicons" },
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

		local keymap = vim.keymap -- barbar
		local opts = { noremap = true, silent = true }

		-- barbar
		opts.desc = "Order Buffer By Directory"
		keymap.set("n", "<leader>to", "<cmd>BufferOrderByDirectory<cr>", opts)

		opts.desc = "Next Buffer"
		keymap.set("n", "<S-l>", "<cmd>BufferNext<cr>", opts)

		opts.desc = "Previous Buffer"
		keymap.set("n", "<S-h>", "<cmd>BufferPrev<cr>", opts)

		opts.desc = "Close Buffer"
		keymap.set("n", "<C-x>", "<cmd>BufferClose<cr>", opts)

		opts.desc = "Close All Buffers But Current or Pinned"
		keymap.set("n", "<leader>tc", "<cmd>BufferCloseAllButCurrentOrPinned<cr>", opts)

		opts.desc = "Close All Open Buffers"
		keymap.set("n", "<leader>ta", "<cmd>BufferWipeout<cr>", opts)

		opts.desc = "Close Current Buffer"
		keymap.set("n", "<leader>tx", "<cmd>BufferClose<cr>", opts)

		opts.desc = "Force Close Current Buffer"
		keymap.set("n", "<leader>tf", "<cmd>BufferClose!<cr>", opts) -- force close

		opts.desc = "Pin Current Buffer"
		keymap.set("n", "<C-p>", "<Cmd>BufferPin<CR>", opts)
	end,
}
