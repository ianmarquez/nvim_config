return {
	"ray-x/go.nvim",
	dependencies = { -- optional packages
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("go").setup()
		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }

		opts.desc = "Add go struct tags"
		keymap.set("n", "<leader>gta", ":GoAddTag<cr>", opts)

		opts.desc = "Remove go struct tags"
		keymap.set("n", "<leader>gtr", ":GoRmTag<cr>", opts)
	end,
	event = { "CmdlineEnter" },
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}
