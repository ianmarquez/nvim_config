return {
	"Exafunction/codeium.vim", -- codium
	lazy = true,
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local keymap = vim.keymap
		keymap.set("i", "<C-g>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true })
		keymap.set("i", "<c-x>", function()
			return vim.fn["codeium#Clear"]()
		end, { expr = true })
	end,
}
