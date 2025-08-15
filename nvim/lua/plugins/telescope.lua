local themes = require("telescope.themes")

return {
	{
		"nvim-telescope/telescope.nvim",
		extensions = { "ui-select" },
		opts = {
			defaults = vim.tbl_extend("force", themes.get_dropdown(), {
				prompt_prefix = "   ",
				selection_caret = " ",
				entry_prefix = " ",
				sorting_strategy = "ascending",
				preview = true,
			}),
		},
		cmd = function()
			require("telescope").load_extension("ui-select")
		end,
	},
}
