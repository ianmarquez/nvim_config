return {
	"lukas-reineke/indent-blankline.nvim", -- indent guides
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local indent_blankline = require("indent_blankline")

		vim.opt.list = true
		vim.opt.termguicolors = true

		vim.cmd([[highlight IndentBlanklineIndent guifg=#ff79c6 gui=nocombine]]) -- dracula
		vim.cmd([[highlight IndentBlanklineIndent1 guifg=#6272A4 gui=nocombine]])
		-- vim.cmd([[highlight IndentBlanklineIndent guifg=#ff4499 gui=nocombine]]) -- tokyonight

		indent_blankline.setup({
			space_char_blankline = " ",
			char_highlight_list = {
				"IndentBlanklineIndent1",
			},
			show_trailing_blankline_indent = false,
			buftype_exclude = { "terminal" },
			filetype_exclude = { "NvimTree", "help", "lazy", "DiffviewFiles", "LuaLine" },
			show_current_context = true,
			context_highlight_list = { "IndentBlanklineIndent" },
		})
	end,
}
