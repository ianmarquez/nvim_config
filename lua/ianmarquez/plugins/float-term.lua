return {
	"voldikss/vim-floaterm",
	keys = {
		{ "<F1>", ":FloatermToggle<cr>" },
		{ "<leader>tn", ":FloatermNew<cr>" },
		{ "<leader>tg", ":FloatermNew lazygit<cr>" },
	},
	init = function()
		vim.g.floaterm_keymap_toggle = "<F1>"
		vim.g.floaterm_width = 0.8
		vim.g.floaterm_height = 0.8
		vim.g.floatterm_wintitle = 1
		vim.g.floaterm_autoclose = 1
	end,
	config = function()
		local keymap = vim.keymap
		keymap.set("n", "<F1>", ":FloatermToggle<cr>")
		keymap.set("n", "<leader>tn", ":FloatermNew<cr>")
		keymap.set("n", "<leader>tg", ":FloatermNew lazygit<cr>")
	end,
}
