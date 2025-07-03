require("nvchad.configs.lspconfig").defaults()

local servers = { "gopls", "ts_ls", "rust_analyzer" }
vim.lsp.enable(servers)
