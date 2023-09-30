return {
	"lukas-reineke/indent-blankline.nvim", -- indent guides
	event = { "BufReadPre", "BufNewFile" },
	main = "ibl",
	config = function()
		local indent_blankline = require("ibl")

		vim.opt.list = true
		vim.opt.termguicolors = true

		vim.cmd([[highlight IndentBlanklineIndent guifg=#ff79c6 gui=nocombine]]) -- dracula
		vim.cmd([[highlight IndentBlanklineIndent1 guifg=#6272A4 gui=nocombine]])
		-- vim.cmd([[highlight IndentBlanklineIndent guifg=#ff4499 gui=nocombine]]) -- tokyonight
		indent_blankline.setup({
			indent = { tab_char = "│", space_char = " ", highlight = "IndentBlanklineIndent1" },
			scope = { char = "│", highlight = "IndentBlanklineIndent" },
			exclude = {
				filetypes = { "NvimTree", "help", "lazy", "DiffviewFiles", "LuaLine", "mason" },
				buftypes = { "terminal" },
			},
		})
	end,
}
