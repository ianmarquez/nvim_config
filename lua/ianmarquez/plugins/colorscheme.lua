return {
	-- {
	-- 	"Mofiqul/dracula.nvim",
	-- 	event = "VeryLazy",
	-- 	lazy = true,
	-- 	name = "dracula",
	-- 	config = function()
	-- 		-- vim.cmd([[colorscheme dracula-soft]])
	-- 	end,
	-- },
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	event = "VeryLazy",
	-- 	lazy = true,
	-- 	name = "tokyonight",
	-- 	config = function()
	-- 		-- vim.cmd([[colorscheme tokyonight]])
	-- 	end,
	-- },
	-- {
	-- 	"rose-pine/neovim",
	-- 	event = "VeryLazy",
	-- 	lazy = true,
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		-- vim.cmd([[colorscheme rose-pine-moon]])
	-- 	end,
	-- },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true,
			})
			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin-mocha]])
		end,
	},
}
