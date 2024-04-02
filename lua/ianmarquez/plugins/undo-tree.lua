return {
	"jiaoshijie/undotree",
	dependencies = "nvim-lua/plenary.nvim",
	lazy = true,
	opts = {
		position = "right",
		float_diff = "false",
		window = {
			winblend = 0,
		},
	},
	keys = { -- load the plugin only when using it's keybinding:
		{ "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
	},
}
