return {
	"sindrets/diffview.nvim", -- diff tool
	keys = {
		{ "<leader>do", ":DiffviewOpen<cr>" },
		{ "<leader>dx", ":DiffviewClose<cr>" },
	},
	config = function()
		local keymap = vim.keymap
		keymap.set("n", "<leader>do", ":DiffviewOpen<cr>") -- open diffview
		keymap.set("n", "<leader>dx", ":DiffviewClose<cr>") -- close diffview
	end,
}
