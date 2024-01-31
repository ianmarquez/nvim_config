return {
	"mvllow/modes.nvim",
	tag = "v0.2.0",
	config = function()
		require("modes").setup({
			colors = {
				insert = "#8BE9FD",
				visual = "#F1FA8C",
			},
			line_opacity = 0.30,
			set_cursor = true,
			set_number = true,
			set_cursorline = true,
		})
	end,
}
