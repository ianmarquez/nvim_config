local setup, nvimtree = pcall(require, "nvim-tree")

if not setup then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#9afcb3 ]])

nvimtree.setup({
	view = {
		hide_root_folder = true,
	},
	update_focused_file = {
		enable = true,
		update_root = true,
	},
	renderer = {
		indent_markers = { enable = true },
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

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
