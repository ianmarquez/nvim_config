local barbar_setup, barbar = pcall(require, "barbar")
if not barbar_setup then
	return
end

barbar.setup({
	highlight_visible = true,
	hightlight_alternate = true,
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

keymap.set("n", "<leader>to", "<cmd>BufferOrderByDirectory<cr>")
keymap.set("n", "<Tab>", "<cmd>BufferNext<cr>")
keymap.set("n", "<S-Tab>", "<cmd>BufferPrev<cr>")
keymap.set("n", "<C-x>", "<cmd>BufferClose<cr>")
keymap.set("n", "<leader>tc", "<cmd>BufferCloseAllButCurrentOrPinned<cr>")
keymap.set("n", "<leader>ta", "<cmd>BufferWipeout<cr>")
keymap.set("n", "<C-p>", "<Cmd>BufferPin<CR>")
