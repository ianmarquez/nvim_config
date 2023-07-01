vim.g.mapleader = " " -- <leader>

local keymap = vim.keymap -- for conciseness

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("i", "<C-c>", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x"')
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-d>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "nzzzv")
keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
-- keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab
--
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- vim-maximizer

-- vim file explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- barbar
keymap.set("n", "<leader>to", "<cmd>BufferOrderByDirectory<cr>")
keymap.set("n", "<leader>th", "<cmd>BufferPrevious<cr>")
keymap.set("n", "<leader>tl", "<cmd>BufferNext<cr>")
keymap.set("n", "<leader>tx", "<cmd>BufferClose<cr>")
keymap.set("n", "<leader>tc", "<cmd>BufferCloseAllButCurrent<cr>")

-- undotree
keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<cr>")

-- blamer
keymap.set("n", "<leader>b", "<cmd>BlamerToggle<cr>")
