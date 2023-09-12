-- blamer
return {
	"APZelos/blamer.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		vim.keymap.set("n", "<leader>gb", "<cmd>BlamerToggle<cr>")

		vim.g.blamer_delay = 300
		vim.g.blamer_relative_time = 1
	end,
}
