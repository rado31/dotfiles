return {
	{
		'stevearc/conform.nvim',
		event = 'BufWritePre',
		config = function()
			require 'configs.conform'
		end,
	},

	{
		'neovim/nvim-lspconfig',
		config = function()
			require('nvchad.configs.lspconfig').defaults()
			require 'configs.lspconfig'
		end,
	},

	{
		'williamboman/mason.nvim',
		opts = {
			ensure_installed = {
				'lua-language-server',
				'stylua',
				'prettierd',
				'typescript-language-server',
			},
		},
	},

	{
		'nvim-treesitter/nvim-treesitter',
		opts = {
			ensure_installed = {
				'vim',
				'vimdoc',
				'lua',
				'html',
				'css',
				'javascript',
				'typescript',
				'tsx',
				'go',
				'gomod',
				'gosum',
				'rust',
				'toml',
				'yaml',
				'markdown',
				'markdown_inline',
			},
		},
	},

	{
		'nvim-tree/nvim-tree.lua',
		opts = function()
			return require 'plugins.configs.nvimtree'
		end,
	},
}
