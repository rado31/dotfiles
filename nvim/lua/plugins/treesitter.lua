return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		opts = {
			auto_install = true,
			ensure_installed = {
				"zig",
				"go",
				"gomod",
				"gosum",
				"rust",
				"toml",
				"sql",
				"typescript",
				"javascript",
				"tsx",
				"html",
				"css",
				"markdown",
			},
			highlight = {
				enable = true,
				use_languagetree = true,
			},
			indent = { enable = true },
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}
