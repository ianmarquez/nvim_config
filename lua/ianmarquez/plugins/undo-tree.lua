return {
	"mbbill/undotree",
	config = function()
		-- key bind
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
	end,
}
