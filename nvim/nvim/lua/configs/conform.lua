local options = {
	formatters_by_ft = {
		lua = { 'stylua' },
		javascript = { 'prettierd' },
		typescript = { 'prettierd' },
		javascriptreact = { 'prettierd' },
		typescriptreact = { 'prettierd' },
	},
}

require('conform').setup(options)
