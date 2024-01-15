return {
	"jiaoshijie/undotree",
	dependencies = "nvim-lua/plenary.nvim",
	config = function()
		local undotree = require("undotree")
		undotree.setup({
			position = "right",
			float_diff = "false",
			window = {
				winblend = 0,
			},
		})
	end,
	keys = { -- load the plugin only when using it's keybinding:
		{ "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
	},
}
