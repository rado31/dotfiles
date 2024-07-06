---@type ChadrcConfig
local M = {}

M.ui = {
    theme = 'onedark',
    telescope = { style = 'bordered' },
    statusline = {
        theme = 'vscode_colored',
    },
    lsp = {
        signature = false,
    },
}

return M
