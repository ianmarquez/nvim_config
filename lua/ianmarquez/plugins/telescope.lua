local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

local telecope_neo_clip_setup, telecope_neo_clip = pcall(require, "neoclip")
if not telecope_neo_clip_setup then
	return
end

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
	extensions = {
		undo = {
			mappings = {
				i = {
					["<cr>"] = require("telescope-undo.actions").yank_additions,
					["<C-cr>"] = require("telescope-undo.actions").yank_deletions,
					["<S-cr>"] = require("telescope-undo.actions").restore,
				},
			},
		},
	},
})

telecope_neo_clip.setup()
telescope.load_extension("fzf")
telescope.load_extension("undo")
telescope.load_extension("neoclip")

local keymap = vim.keymap
-- telescope
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>")
keymap.set("n", "<leader>u", "<cmd>Telescope undo<cr>")
keymap.set("n", "<leader>o", "<cmd>Telescope lsp_document_symbols<cr>")
keymap.set("n", "<leader>fr", "<cmd>Telescope neoclip<cr>")
