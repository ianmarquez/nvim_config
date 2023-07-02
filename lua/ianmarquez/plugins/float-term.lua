vim.g.floaterm_keymap_toggle = "<F1>"
vim.g.floaterm_width = 0.9
vim.g.floaterm_height = 0.8
vim.g.floatterm_wintitle = 0
vim.g.floaterm_autoclose = 1

local keymap = vim.keymap

keymap.set("n", "<leader>tt", "<cmd>FloatermNew<cr>")
keymap.set("n", "<leader>tg", "<cmd>FloatermNew lazygit<cr>")
keymap.set("n", "<leader>tn", "<cmd>FloatermNext<cr>")
