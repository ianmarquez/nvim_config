vim.g.mapleader = " " -- <leader>

local keymap = vim.keymap -- for conciseness

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move text down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move text up" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "No highlight" })
keymap.set("n", "x", '"_x"')
keymap.set("n", "J", "mzJ`z", { desc = "Delete line break" })
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv", { desc = "Next highlighted word" })
keymap.set("n", "N", "Nzzzv", { desc = "Previous highlighted word" })
keymap.set(
	"n",
	"<leader>s",
	[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
	{ desc = "Replace word under cursor" }
)

-- window controls
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Equalize windows" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Equalize windows" })
keymap.set("n", "<C-n>", "10<C-w>>", { desc = "Increase window width size" })
keymap.set("n", "<C-m>", "10<C-w>-", { desc = "Decrease window height size" })
keymap.set("n", "<C-,>", "10<C-w>+", { desc = "Increase window height size" })
keymap.set("n", "<C-.>", "10<C-w><", { desc = "Decrease window width size" })
keymap.set("n", "<leader>wq", ":close<CR>", { desc = "Close current window" })
