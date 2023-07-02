local barbar_setup, barbar = pcall(require, "barbar")
if not barbar_setup then
	return
end

barbar.setup({
	highlight_visible = true,
	maximum_padding = 2,
	minimum_padding = 2,
})

local keymap = vim.keymap -- barbar

keymap.set("n", "<leader>to", "<cmd>BufferOrderByDirectory<cr>")
keymap.set("n", "<Tab>", "<cmd>BufferNext<cr>")
keymap.set("n", "<S-Tab>", "<cmd>BufferPrev<cr>")
keymap.set("n", "<C-x>", "<cmd>BufferClose<cr>")
keymap.set("n", "<leader>tc", "<cmd>BufferCloseAllButCurrent<cr>")
keymap.set("n", "<leader>txa", "<cmd>BufferWipeout<cr>")
