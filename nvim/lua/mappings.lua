require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "tr", "<cmd> Telescope lsp_references <CR>", { silent = true })
map("i", "jk", "<ESC>")
