return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "go",
        "rust",
        "typescript",
        "tsx",
        "javascript",
        "sql",
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require "plugins.configs.nvimtree"
    end,
  },

  {
    "sphamba/smear-cursor.nvim",
    lazy = false,
    opts = {},
  },

  {
    "arnamak/stay-centered.nvim",
    lazy = false,
    opts = {},
  },
}
