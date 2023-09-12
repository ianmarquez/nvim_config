return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				file_ignore_patterns = { "node_modules", "%.lock", "package.json" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		local keymap = vim.keymap
		-- telescope
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
		keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
		keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
		keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>")
		keymap.set("n", "<leader>o", "<cmd>Telescope lsp_document_symbols<cr>")
		keymap.set("n", "<leader>fr", "<cmd>Telescope neoclip<cr>")
	end,
}
