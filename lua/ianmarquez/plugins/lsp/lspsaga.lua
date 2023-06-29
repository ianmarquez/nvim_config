local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then 
    return
end

local keymap = vim.keymap.set

keymap("n", "<F12>", "<cmd>Lspsaga rename ++project<CR>")
keymap("n", "<leader>pd", "<cmd>Lspsaga peek_definition<CR>")
keymap("n", "<leader>gd", "<cmd>Lspsaga goto_definition<CR>")
keymap("n", "<leader>H", "<cmd>Lspsaga hover_doc<CR>")
keymap("n", "<leader>sw", "<cmd>Lspsaga show_workspace_diagnostics<CR>")
keymap("n", "<F2>", "<cmd>Lspsaga lsp_finder<CR>")


saga.setup({
  -- keybinds for navigation in lspsaga window
  scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
  -- use enter to open file with definition preview
  definition = {
    edit = "<CR>",
  },
  ui = {
    colors = {
      normal_bg = "#022746",
    },
  },
})
