return {
	{
		'stevearc/conform.nvim',
		event = 'BufWritePre',
		opts = require 'configs.conform',
	},

	{
		'neovim/nvim-lspconfig',
		config = function()
			require 'configs.lspconfig'
		end,
	},

	{
		'nvim-treesitter/nvim-treesitter',
		opts = {
			ensure_installed = {
				'vim',
				'go',
				'gomod',
				'rust',
				'toml',
				'yaml',
				'typescript',
				'javascript',
				'tsx',
				'svelte',
				'css',
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
