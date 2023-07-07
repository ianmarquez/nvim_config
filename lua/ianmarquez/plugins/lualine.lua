local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local lualine_dracula = require("lualine.themes.dracula")
local lualine_palenight = require("lualine.themes.palenight")

lualine.setup({
	options = {
		-- theme = lualine_dracula,
		theme = lualine_palenight,
	},
})
