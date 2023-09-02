vim.g.mapleader = " " -- <leader>

local keymap = vim.keymap -- for conciseness

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("i", "<C-c>", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x"')
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "nzzzv")
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- window controls
keymap.set("n", "<leader>bv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>bh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>be", "<C-w>=") -- split windows equal width
keymap.set("n", "<leader>bx", ":close<CR>") -- close current split window
