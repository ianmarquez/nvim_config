return {
	{
		"Mofiqul/dracula.nvim",
		priority = 1000,
		name = "dracula",
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme dracula-soft]])
		end,
	},
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme rose-pine-moon]])
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme catppuccin-frappe]])
		end,
	},
	{
		"olimorris/onedarkpro.nvim",
		name = "onedarkpro",
		config = function()
			-- load the colorscheme here
			-- vim.cmd([[colorscheme onedark]])
		end,
	},
}
