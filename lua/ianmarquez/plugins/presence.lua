local presence_setup, presence = pcall(require, "presence")
if not presence_setup then
	return
end

presence.setup({
	neovim_image_text = "The One True PDE",
	enable_line_number = true,
	main_image = "file",
	buttons = false,
	show_time = false,
})
