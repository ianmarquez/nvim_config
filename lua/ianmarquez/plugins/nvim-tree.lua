-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

return {
	"nvim-tree/nvim-tree.lua", -- file explorer
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	keys = {
		{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle nvim-tree" },
		{ "<leader>tr", "<cmd>NvimTreeRefresh<cr>", desc = "Refresh nvim-tree" },
	},
	config = function()
		local nvimtree = require("nvim-tree")
		-- vim.cmd([[ highlight NvimTreeIndentMarker guifg=#f8f8f2 ]])

		nvimtree.setup({
			update_focused_file = {
				enable = true,
				update_root = true,
			},
			view = {
				width = 40,
			},
			renderer = {
				indent_markers = { enable = true },
				root_folder_label = false,
			},
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
		})
	end,
}
