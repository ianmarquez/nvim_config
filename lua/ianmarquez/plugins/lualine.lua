return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = { "BufReadPre", "BufNewFile" },
	lazy = true,
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count
		lualine.setup({
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
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#FFB86C" },
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
