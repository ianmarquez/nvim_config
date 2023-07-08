local which_key_setup, which_key = pcall(require, "which-key")
if not which_key_setup then
	return
end

vim.o.timeout = true
vim.o.timeoutlen = 300

which_key.setup({})
