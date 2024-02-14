return {
	"folke/noice.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
		"NvChad/nvim-colorizer.lua", -- colorizer
	},
	config = function()
		local noice = require("noice")
		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }
		noice.setup({
			views = {
				cmdline_popup = {
					position = {
						row = 10,
						col = "50%",
					},
					size = {
						width = 50,
						height = "auto",
					},
				},
				popupmenu = {
					relative = "editor",
					position = {
						row = 13,
						col = "50%",
					},
					size = {
						width = 60,
						height = 10,
					},
					border = {
						style = "rounded",
						padding = { 0, 1 },
					},
					win_options = {
						winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
					},
				},
			},
			cmdline = {
				enabled = true, -- enables the Noice cmdline UI
				view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
			},
			messages = {
				enabled = false,
			},
			notify = {
				enabled = true,
				view = "notify",
			},
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				command_palette = true, -- position the cmdline and popupmenu together
				long_message_to_split = true, -- long messages will be sent to a split
				inc_rename = true, -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = true, -- add a border to hover docs and signature help
			},
		})

		-- keybindings
		opts.desc = "Open notification history"
		keymap.set("n", "<leader>no", "<cmd>Noice<CR>", opts)

		opts.desc = "Dismiss all notifications"
		keymap.set("n", "<leader>nd", "<cmd>Noice dismiss<CR>", opts)

		opts.desc = "Open error notifications"
		keymap.set("n", "<leader>ne", "<cmd>Noice errors<CR>", opts)
	end,
}
