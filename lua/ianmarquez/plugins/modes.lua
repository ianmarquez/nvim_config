return {
	"mvllow/modes.nvim",
	tag = "v0.2.0",
	config = function()
		require("modes").setup({
			colors = {
				copy = "#BD93F9",
				insert = "#50FA7B",
				visual = "#F1FA8C",
				delete = "#FF5555",
			},
			line_opacity = 0.30,
			set_cursor = true,
			set_number = true,
			set_cursorline = true,
		})
	end,
}
