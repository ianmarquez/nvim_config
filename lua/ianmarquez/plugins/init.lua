return {
	"nvim-lua/plenary.nvim", -- lua functions that many plugins use
	"christoomey/vim-tmux-navigator", -- window navigation
	"inkarkat/vim-ReplaceWithRegister", -- replace with register contents using motion (gr + motion)
	"tpope/vim-surround",
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- configuring lsp servers
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"pangloss/vim-javascript",
	{
		"nvimdev/lspsaga.nvim",
		branch = "main",
	},
	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		opts = {},
	}, -- additional functionality for typescript server (e.g. rename file & update imports)
	{ "evanleck/vim-svelte", branch = "main" },
	"onsails/lspkind.nvim",
	-- formatting and linting
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",
	"windwp/nvim-ts-autotag",
}
