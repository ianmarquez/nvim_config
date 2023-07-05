require("ianmarquez.plugins-setup")
require("ianmarquez.core.options")
require("ianmarquez.core.keymaps")
require("ianmarquez.plugins.comment")
require("ianmarquez.plugins.nvim-tree")
require("ianmarquez.plugins.lualine")
require("ianmarquez.plugins.telescope")
require("ianmarquez.plugins.nvim-cmp")
require("ianmarquez.plugins.lsp.mason")
require("ianmarquez.plugins.lsp.lspsaga")
require("ianmarquez.plugins.lsp.lspconfig")
require("ianmarquez.plugins.lsp.null-ls")
require("ianmarquez.plugins.autopairs")
require("ianmarquez.plugins.treesitter")
require("ianmarquez.plugins.gitsigns")
require("ianmarquez.plugins.undotree")
require("ianmarquez.plugins.blamer")
require("ianmarquez.plugins.nvim-dap")
require("ianmarquez.plugins.barbar")
require("ianmarquez.plugins.float-term")
require("ianmarquez.plugins.dashboard")
require("ianmarquez.plugins.colorizer")
require("ianmarquez.plugins.tailwind-colorizer")
require("ianmarquez.plugins.indent-blankline")
require("ianmarquez.core.colorscheme")
-- https://github.com/neovim/neovim/issues/21749#issuecomment-1378720864
-- Fix loading of json5
table.insert(vim._so_trails, "/?.dylib")
