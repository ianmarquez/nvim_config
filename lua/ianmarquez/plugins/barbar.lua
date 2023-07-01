local keymap = vim.keymap -- barbar

keymap.set("n", "<leader>to", "<cmd>BufferOrderByDirectory<cr>")
keymap.set("n", "<leader>th", "<cmd>BufferPrevious<cr>")
keymap.set("n", "<leader>tl", "<cmd>BufferNext<cr>")
keymap.set("n", "<leader>tx", "<cmd>BufferClose<cr>")
keymap.set("n", "<leader>tc", "<cmd>BufferCloseAllButCurrent<cr>")
keymap.set("n", "<leader>txa", "<cmd>BufferWipeout<cr>")
