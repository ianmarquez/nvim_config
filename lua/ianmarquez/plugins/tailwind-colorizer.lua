local tailwind_colorizer_setup, tailwind_colorizer = pcall(require, "tailwindcss-colorizer-cmp")
if not tailwind_colorizer_setup then
	return
end

tailwind_colorizer.setup({
	color_square_width = 2,
})
