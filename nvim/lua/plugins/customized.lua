return {
  { "LazyVim/LazyVim", opts = { colorscheme = "everforest" } },

  {
    "snacks.nvim",
    opts = {
      picker = { exclude = { "nodu_modules", ".git", "target" } },
    },
  },

  {
    "conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        rust = { "rustfmt" },
        go = { "gofmt" },
      },
    },
  },
}
