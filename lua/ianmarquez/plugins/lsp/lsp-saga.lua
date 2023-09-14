return {
	"nvimdev/lspsaga.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = true,
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
}
