---@type ChadrcConfig
local M = {}

M.ui = {
	theme = 'oceanic-next',
	telescope = { style = 'bordered' },
	statusline = {
		theme = 'vscode_colored',
	},
	lsp = {
		signature = false,
	},
}

return M
