return {
  { "LazyVim/LazyVim", opts = { colorscheme = "everforest" } },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        rust_analyzer = {},
        gopls = {},
      },
    },
  },
}
