vim.g.dashboard_default_executive = "telescope"
local dashboard_setup, dashboard = pcall(require, "dashboard")
if not dashboard_setup then
	return
end

dashboard.setup({
	shortcut_type = "number",
	change_to_vcs_root = true,
	theme = "hyper",
	config = {
		week_header = {
			enable = true,
		},
		shortcut = {
			{ desc = "󰊳 Update", group = "@property", action = "PackerSync", key = "u" },
			{
				icon = " ",
				icon_hl = "@variable",
				desc = "Files",
				group = "Label",
				action = "Telescope find_files",
				key = "f",
			},
		},
	},
})
