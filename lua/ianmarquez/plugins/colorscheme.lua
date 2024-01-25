return {
	{
		"Mofiqul/dracula.nvim",
		name = "dracula",
		priority = 1000,
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme dracula]])
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
