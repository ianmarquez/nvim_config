return {
	"nvim-tree/nvim-tree.lua", -- file explorer
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded = 1
		vim.g.loaded_netrwPlugin = 1

		-- change color for arrows in tree to light blue
		vim.cmd([[ highlight NvimTreeIndentMarker guifg=#f8f8f2 ]])

		nvimtree.setup({
			update_focused_file = {
				enable = true,
				update_root = true,
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

		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }
		-- vim file explorer
		opts.desc = "File Explorer"
		keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

		opts.desc = "Refresh File Explorer"
		keymap.set("n", "<leader>tr", ":NvimTreeRefresh<CR>", opts)
	end,
}
