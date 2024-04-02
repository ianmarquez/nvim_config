return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = { "BufReadPre", "BufNewFile" },
	lazy = true,
	opts = {
		options = {
			theme = require("lualine.themes.catppuccin"),
		},
		sections = {
			lualine_c = {
				{
					"filename",
					file_status = true,
					path = 0,
					symbols = {
						newFile = "",
						modified = " ●",
						readonly = " ",
					},
				},
			},
			lualine_x = {
				{
					require("lazy.status").updates,
					cond = require("lazy.status").has_updates,
					color = { fg = "#FFB86C" },
				},
				{ "encoding" },
				{ "fileformat" },
				{ "filetype" },
			},
		},
	},
}
