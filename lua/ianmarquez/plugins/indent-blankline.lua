local indent_blankline_setup, indent_blankline = pcall(require, "indent-blankline")
if not indent_blankline_setup then
	return
end

vim.opt.list = true

indent_blankline.setup({
	buftype_exclude = { "terminal" },
	filetype_exclude = { "dashboard" },
	show_current_context = true,
	show_current_context_start = true,
})
