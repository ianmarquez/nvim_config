return {
	{
		"Mofiqul/dracula.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme dracula]])
		end,
	},
	{
		"rebelot/kanagawa.nvim",
		lazy = true,
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme kanagawa-wave]])
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = true,
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme tokyonight-moon]])
		end,
	},
}
