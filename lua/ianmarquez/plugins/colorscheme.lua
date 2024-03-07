return {
	{
		"Mofiqul/dracula.nvim",
		event = "VeryLazy",
		name = "dracula",
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme dracula-soft]])
		end,
	},
	{
		"folke/tokyonight.nvim",
		event = "VeryLazy",
		name = "tokyonight",
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{
		"rose-pine/neovim",
		event = "VeryLazy",
		name = "rose-pine",
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme rose-pine-moon]])
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin-macchiato]])
		end,
	},
}
