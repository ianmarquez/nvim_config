-- blamer
return {
	"APZelos/blamer.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local opts = { noremap = true, silent = true }

		opts.desc = "Toggle Blamer"
		vim.keymap.set("n", "<leader>gb", "<cmd>BlamerToggle<cr>", opts)

		vim.g.blamer_delay = 300
		vim.g.blamer_relative_time = 1
	end,
}
