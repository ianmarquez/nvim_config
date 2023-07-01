local dap_setup, dap = pcall(require, "dap")
if not dap_setup then
	return
end

local dapui_setup, dapui = pcall(require, "dapui")
if not dapui_setup then
	return
end

local dap_vscode_setup, dap_vscode = pcall(require, "dap-vscode-js")
if not dap_vscode_setup then
	return
end

dapui.setup()

dap_vscode.setup({
	node_path = "node",
	adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
})

local js_based_languages = { "typescript", "javascript", "typescriptreact" }

for _, language in ipairs(js_based_languages) do
	require("dap").configurations[language] = {
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch file",
			program = "${file}",
			cwd = "${workspaceFolder}",
		},
		{
			type = "pwa-node",
			request = "attach",
			name = "Attach",
			processId = require("dap.utils").pick_process,
			cwd = "${workspaceFolder}",
		},
		{
			type = "pwa-chrome",
			request = "launch",
			name = 'Start Chrome with "localhost"',
			url = "http://localhost:3000",
			webRoot = "${workspaceFolder}",
			userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir",
			sourcemaps = true,
		},
	}
end

require("dap.ext.vscode").load_launchjs(nil, {
	["pwa-node"] = js_based_languages,
	["node"] = js_based_languages,
	["chrome"] = js_based_languages,
	["pwa-chrome"] = js_based_languages,
	["node-terminal"] = js_based_languages,
})

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open({})
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close({})
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close({})
end

local keymap = vim.keymap

keymap.set("n", "<leader>b", dap.toggle_breakpoint)
keymap.set("n", "<F5>", dap.continue)
keymap.set("n", "<F10>", dap.step_over)
keymap.set("n", "<F11>", dap.step_into)
keymap.set("n", "<F12>", dap.step_out)
keymap.set("n", "<leader>ui", dapui.toggle)
