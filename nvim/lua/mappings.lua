require 'nvchad.mappings'

local map = vim.keymap.set

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('n', '<Esc>', '<cmd> Noice dismiss <CR>', { desc = 'Clear highlights' })
map('n', 'tr', '<cmd> Telescope lsp_references <CR>', { silent = true })
