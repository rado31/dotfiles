local configs = require("plugins.configs.lspconfig")
local utils = require "core.utils"

local on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = true
  client.server_capabilities.documentRangeFormattingProvider = true

  utils.load_mappings("lspconfig", { buffer = bufnr })

  if client.server_capabilities.signatureHelpProvider then
    require("nvchad.signature").setup(client)
  end

  if not utils.load_config().ui.lsp_semantic_tokens and client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
  end
end

local capabilities = configs.capabilities

local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })

local enable_format_on_save = function(_, bufnr)
    vim.api.nvim_clear_autocmds({ group = augroup_format, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup_format,
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
        end,
    })
end

local lspconfig = require "lspconfig"

lspconfig.tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig.rust_analyzer.setup {
    on_attach = function (client, bufnr)
        on_attach(client, bufnr)
        enable_format_on_save(client, bufnr)
    end,
    capabilities = capabilities,
    filetypes = { 'rust' },
    root_dir = lspconfig.util.root_pattern('Cargo.toml'),
    cmd = { '/Users/rado/.cargo/bin/rust-analyzer' }
}

lspconfig.gopls.setup {
    on_attach = function (client, bufnr)
        on_attach(client, bufnr)
        enable_format_on_save(client, bufnr)
    end,
    capabilities = capabilities,
    filetypes = { 'go', 'go.mod', 'go.sum' },
    root_dir = lspconfig.util.root_pattern('go.mod'),
    cmd = { '/opt/homebrew/bin/gopls' },
}
