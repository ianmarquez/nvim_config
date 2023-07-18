local status, _ = pcall(vim.cmd, "colorscheme dracula") -- dracula
-- local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
-- local status, _ = pcall(vim.cmd, "colorscheme poimandres") -- poimandres
vim.cmd("hi LineNr guifg=#f8f8f2")
vim.cmd("hi CursorLineNr guifg=#00ffd2")

if not status then
	print("Colorscheme not found!")
	return
end
