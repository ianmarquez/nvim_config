local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

-- Autocommand that reload neovim whenever you save this file
vim.cmd([[ 
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim")

	-- lua functions that many plugins use
	use("nvim-lua/plenary.nvim")

	use("Mofiqul/dracula.nvim") -- dracula color scheme
	use("rebelot/kanagawa.nvim") -- kanagawa color scheme
	use("folke/tokyonight.nvim") -- tokyonight color scheme

	-- tmux & split window navigation
	use("christoomey/vim-tmux-navigator")

	use("szw/vim-maximizer") -- maximizer and restores current window

	-- essential plugins
	use("tpope/vim-surround")
	use("vim-scripts/ReplaceWithRegister")

	-- commenting with gc
	use("numToStr/Comment.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- autocompletion
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")

	-- snippets
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	use("avneesh0612/react-nextjs-snippets")

	-- fuzzy finding
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency
	use({
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
	})

	-- undo tree
	use("mbbill/undotree")

	-- managing and installing lsp servers, linters and formatters
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use("jose-elias-alvarez/typescript.nvim")
	use("onsails/lspkind.nvim")

	-- formatting and linting
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")

	-- treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("nvim-treesitter/nvim-treesitter-context") --tree sitter context

	-- git signs plugin
	use("lewis6991/gitsigns.nvim")

	-- auto closing
	use("windwp/nvim-autopairs")
	use("windwp/nvim-ts-autotag")

	-- tab navigation
	use("romgrk/barbar.nvim")

	-- which key cheat sheet
	use({
		"folke/which-key.nvim",
		config = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
			require("which-key").setup()
		end,
	})

	-- gitblame plugin
	use("APZelos/blamer.nvim")

	-- debugger
	use("mfussenegger/nvim-dap")
	use("rcarriga/nvim-dap-ui")
	use({ "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } })
	use({
		"microsoft/vscode-js-debug",
		opt = true,
		run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
	})
	use("theHamsta/nvim-dap-virtual-text")

	-- json5
	use({
		"Joakker/lua-json5",
		run = "./install.sh",
	})

	-- floating terminal
	use("voldikss/vim-floaterm")

	-- nvim multi cursor
	use({
		"mg979/vim-visual-multi",
		branch = "master",
	})

	-- nvim dashboard
	use({
		"glepnir/dashboard-nvim",
		event = "VimEnter",
	})

	-- tailwind colorizer
	use("roobert/tailwindcss-colorizer-cmp.nvim")

	-- colorizer
	use("norcalli/nvim-colorizer.lua")

	-- indent guides
	use("lukas-reineke/indent-blankline.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
