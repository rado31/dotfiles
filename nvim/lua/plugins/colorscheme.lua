return {
	{
		"neanias/everforest-nvim",
		version = false,
		lazy = false,
		priority = 1000,
		config = function()
			local everforest = require("everforest")

			everforest.setup({
				transparent_background_level = 0.9,
			})

			everforest.load()
		end,
	},
}
