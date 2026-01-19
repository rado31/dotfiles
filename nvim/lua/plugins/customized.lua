return {
  { "LazyVim/LazyVim", opts = { colorscheme = "everforest" } },

  {
    "snacks.nvim",
    opts = {
      picker = { exclude = { "nodu_modules", ".git", "target" } },
    },
  },

  {
    "folke/noice.nvim",
    opts = { presets = { lsp_doc_border = true } },
  },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      inlay_hints = { enabled = false },
      ---@type lspconfig.options
      servers = {
        rust_analyzer = {},
        gopls = {},
      },
    },
  },
}
