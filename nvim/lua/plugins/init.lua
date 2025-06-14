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
				'zig',
				'typescript',
				'javascript',
				'tsx',
				'css',
				'html',
				'vue',
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

	{
		'sphamba/smear-cursor.nvim',
		lazy = false,
		opts = {},
	},

	{
		'arnamak/stay-centered.nvim',
		lazy = false,
		opts = {},
	},
}
