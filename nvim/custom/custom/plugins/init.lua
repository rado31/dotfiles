local plugins = {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "html",
                "css",
                "javascript",
                "typescript",
                "tsx",
                "json",
                "bash",
                "rust",
                "toml",
                "go",
                "gomod",
                "markdown",
                "markdown_inline",
                "vim",
                "regex",
                "lua",
                "bash",
                "sql"
            },
        },
    },
    {
        "neovim/nvim-lspconfig",

        dependencies = {
            "jose-elias-alvarez/null-ls.nvim",
            config = function()
                require "custom.plugins.configs.null-ls"
            end,
        },

        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.configs.lspconfig"
        end,
    },
    {
        "windwp/nvim-ts-autotag",
        lazy = false,
        config = function ()
            require('nvim-ts-autotag').setup()
        end
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = function()
            return require "custom.plugins.configs.nvimtree"
        end,
    },
    {
        "folke/noice.nvim",
        event = "VeryLazy",
        lazy = false,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
        config = function ()
            require('noice').setup({
                lsp = {
                    override = {
                        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                        ["vim.lsp.util.stylize_markdown"] = true,
                        ["cmp.entry.get_documentation"] = true,
                    },
                    signature = {
                        enabled = false,
                    },
                    hover = {
                        enabled = false,
                    }
                },
                presets = {
                    bottom_search = true, -- use a classic bottom cmdline for search
                    command_palette = true, -- position the cmdline and popupmenu together
                    long_message_to_split = true, -- long messages will be sent to a split
                    inc_rename = false, -- enables an input dialog for inc-rename.nvim
                    lsp_doc_border = false, -- add a border to hover docs and signature help
                }
            })
        end
    },
    {
        "iamcco/markdown-preview.nvim",
        lazy = false,
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        build = "cd app && yarn install",
        init = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    },
}

return plugins
