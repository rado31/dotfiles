require('nvchad.configs.lspconfig').defaults()

local lspconfig = require 'lspconfig'

local servers = { 'gopls', 'rust_analyzer', 'zls', 'ts_ls' }
local nvlsp = require 'nvchad.configs.lspconfig'

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup {
		on_attach = nvlsp.on_attach,
		on_init = nvlsp.on_init,
		capabilities = nvlsp.capabilities,
	}
end
