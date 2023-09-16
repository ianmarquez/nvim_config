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
				file_ignore_patterns = { "node_modules", "%.lock" },
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
		local opts = { noremap = true, silent = true }

		-- telescope
		opts.desc = "Free Text Search"
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", opts)

		opts.desc = "Find Word"
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", opts)

		opts.desc = "Find In Open Buffers"
		keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)

		opts.desc = "Find Files"
		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)

		opts.desc = "Find Help Tags"
		keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)

		opts.desc = "Find Keymaps"
		keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", opts)

		opts.desc = "Find Symbols in Current File"
		keymap.set("n", "<leader>o", "<cmd>Telescope lsp_document_symbols<cr>", opts)
	end,
}
