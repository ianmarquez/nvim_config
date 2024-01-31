return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("gitsigns").setup({
			current_line_blame_opts = {
				delay = 400,
			},
		})
		local opts = { noremap = true, silent = true }

		opts.desc = "Toggle Blamer"
		vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<cr>", opts)
	end,
}
