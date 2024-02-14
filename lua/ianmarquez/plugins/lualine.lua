return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count
		local lualine_dracula = require("lualine.themes.dracula")
		lualine.setup({
			options = {
				theme = lualine_dracula,
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
