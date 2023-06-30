local status, _ = pcall(vim.cmd, "colorscheme dracula") -- dracula
-- local status, _ = pcall(vim.cmd, "colorscheme kanagawa") -- kanagawa

if not status then
	print("Colorscheme not found!")
	return
end
