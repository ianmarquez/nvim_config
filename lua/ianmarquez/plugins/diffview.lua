return {
	"sindrets/diffview.nvim", -- diff tool
	keys = {
		{ "<leader>do", ":DiffviewOpen<cr>" },
		{ "<leader>dx", ":DiffviewClose<cr>" },
	},
	config = function()
		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }

		opts.desc = "Open Diffview"
		keymap.set("n", "<leader>do", ":DiffviewOpen<cr>", opts) -- open diffview

		opts.desc = "Close Diffview"
		keymap.set("n", "<leader>dx", ":DiffviewClose<cr>", opts) -- close diffview
	end,
}
