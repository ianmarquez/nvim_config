return {
	"mvllow/modes.nvim",
	tag = "v0.2.0",
	config = function()
		require("modes").setup({
			colors = {
				copy = "#BD93F9",
				delete = "#FF5555",
				insert = "#8BE9FD",
				visual = "#F1FA8C",
			},
			line_opacity = 0.20,
			set_cursor = true,
			set_number = true,
			set_cursorline = true,
		})
	end,
}
