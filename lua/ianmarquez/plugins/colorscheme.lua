return {
	{
		"Mofiqul/dracula.nvim",
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
}
