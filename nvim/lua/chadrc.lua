---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "everforest",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  tabufline = { lazyload = false },
  telescope = { style = "bordered" },
  statusline = { theme = "vscode_colored" },
}

return M
