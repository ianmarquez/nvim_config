local indent_blankline_setup, indent_blankline = pcall(require, "indent_blankline")
if not indent_blankline_setup then
	return
end

vim.opt.list = true
vim.opt.termguicolors = true

-- vim.cmd([[highlight IndentBlanklineIndent guifg=#ff79c6 gui=nocombine]]) -- dracula
vim.cmd([[highlight IndentBlanklineIndent guifg=#ff4499 gui=nocombine]]) -- tokyonight

indent_blankline.setup({
	buftype_exclude = { "terminal" },
	filetype_exclude = { "dashboard", "NvimTree", "help", "lspsagaoutline", "lazy", "DiffviewFiles" },
	show_current_context = true,
	show_current_context_start = true,
	context_highlight_list = { "IndentBlanklineIndent" },
})
