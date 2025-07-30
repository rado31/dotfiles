return {
	"nvim-telescope/telescope-file-browser.nvim",
	config = function()
		require("telescope").setup({
			extensions = {
				file_browser = {
					hidden = { file_browser = true, folder_browser = true },
					no_ignore = true,
				},
			},
		})
	end,
}
