return {
	"romgrk/barbar.nvim", -- tab navigation
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local barbar = require("barbar")
		barbar.setup({
			animation = false,
			highlight_visible = true,
			hightlight_alternate = true,
			maximum_padding = 1,
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
		-- barbar
		keymap.set("n", "<leader>to", "<cmd>BufferOrderByDirectory<cr>")
		keymap.set("n", "<S-l>", "<cmd>BufferNext<cr>")
		keymap.set("n", "<S-h>", "<cmd>BufferPrev<cr>")
		keymap.set("n", "<C-x>", "<cmd>BufferClose<cr>")
		keymap.set("n", "<leader>tc", "<cmd>BufferCloseAllButCurrentOrPinned<cr>")
		keymap.set("n", "<leader>ta", "<cmd>BufferWipeout<cr>")
		keymap.set("n", "<leader>tx", "<cmd>BufferClose<cr>")
		keymap.set("n", "<leader>tf", "<cmd>BufferClose!<cr>") -- force close
		keymap.set("n", "<C-p>", "<Cmd>BufferPin<CR>")
		keymap.set({ "n", "v" }, "<A-1>", " <Cmd>BufferGoto 1<CR>")
		keymap.set({ "n", "v" }, "<A-2>", " <Cmd>BufferGoto 2<CR>")
		keymap.set({ "n", "v" }, "<A-3>", " <Cmd>BufferGoto 3<CR>")
		keymap.set({ "n", "v" }, "<A-4>", " <Cmd>BufferGoto 4<CR>")
		keymap.set({ "n", "v" }, "<A-5>", " <Cmd>BufferGoto 5<CR>")
		keymap.set({ "n", "v" }, "<A-6>", " <Cmd>BufferGoto 6<CR>")
		keymap.set({ "n", "v" }, "<A-7>", " <Cmd>BufferGoto 7<CR>")
		keymap.set({ "n", "v" }, "<A-8>", " <Cmd>BufferGoto 8<CR>")
		keymap.set({ "n", "v" }, "<A-9>", " <Cmd>BufferGoto 9<CR>")
		keymap.set({ "n", "v" }, "<A-0>", " <Cmd>BufferLast<CR>")
	end,
}
