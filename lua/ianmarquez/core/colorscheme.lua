-- local status, _ = pcall(vim.cmd, "colorscheme dracula") -- dracula
-- local status, _ = pcall(vim.cmd, "colorscheme kanagawa") -- kanagawa
local status, _ = pcall(vim.cmd, "colorscheme tokyonight")

if not status then
	print("Colorscheme not found!")
	return
end
