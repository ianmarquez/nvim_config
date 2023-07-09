local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local status, lazy = pcall(require, "lazy")
if not status then
	return
end

lazy.setup({
	"nvim-lua/plenary.nvim", -- lua functions that many plugins use
	"kyazdani42/nvim-web-devicons", -- icons
	"Mofiqul/dracula.nvim", -- dracula color scheme
	"folke/tokyonight.nvim", -- tokyonight color scheme
	"christoomey/vim-tmux-navigator", -- window navigation
	-- essential plugins
	"tpope/vim-surround",
	"vim-scripts/ReplaceWithRegister",
	"numToStr/Comment.nvim", -- commenting with gc
	"nvim-tree/nvim-tree.lua", -- file explorer
	"nvim-lualine/lualine.nvim", -- statusline
	-- autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	-- snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"avneesh0612/react-nextjs-snippets",
	-- fuzzy finding
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" },
	"mbbill/undotree", -- undo tree
	-- managing and installing lsp servers, linters and formatters
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	-- configuring lsp servers
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	{ "glepnir/lspsaga.nvim", branch = "main" },
	"jose-elias-alvarez/typescript.nvim",
	"onsails/lspkind.nvim",
	-- formatting and linting
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",
	-- treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	},
	"nvim-treesitter/nvim-treesitter-context", --tree sitter context
	"lewis6991/gitsigns.nvim", -- git signs plugin
	-- auto closing
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",
	"romgrk/barbar.nvim", -- tab navigation
	"folke/which-key.nvim", -- which key cheat sheet
	"APZelos/blamer.nvim", -- gitblame plugin
	"voldikss/vim-floaterm", -- floating terminal
	{ "mg979/vim-visual-multi", branch = "master" }, -- nvim multi cursor
	{ "glepnir/dashboard-nvim", event = "VimEnter" }, -- nvim dashboard
	-- noice ui
	"MunifTanjim/nui.nvim",
	"rcarriga/nvim-notify",
	"folke/noice.nvim",
	"norcalli/nvim-colorizer.lua", -- colorizer
	"lukas-reineke/indent-blankline.nvim", -- indent guides
})
