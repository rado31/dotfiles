require("nvchad.configs.lspconfig").defaults()

local servers = { "rust_analyzer", "gopls", "ts_ls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
