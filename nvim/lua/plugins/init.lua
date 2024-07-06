return {
    {
        'stevearc/conform.nvim',
        config = function()
            require 'configs.conform'
        end,
    },
    {
        'nvim-tree/nvim-tree.lua',
        opts = function()
            return require 'plugins.configs.nvimtree'
        end,
    },
    {
        'numToStr/Comment.nvim',
        keys = {
            {
                'gcc',
                mode = 'n',
                desc = 'Comment toggle current line',
            },
            { 'gc', mode = { 'n', 'o' }, desc = 'Comment toggle linewise' },
            {
                'gc',
                mode = 'x',
                desc = 'Comment toggle linewise (visual)',
            },
            {
                'gbc',
                mode = 'n',
                desc = 'Comment toggle current block',
            },
            { 'gb', mode = { 'n', 'o' }, desc = 'Comment toggle blockwise' },
            {
                'gb',
                mode = 'x',
                desc = 'Comment toggle blockwise (visual)',
            },
        },
        opts = {},
        lazy = false,
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            require('nvchad.configs.lspconfig').defaults()
            require 'configs.lspconfig'
        end,
    },
    {
        'williamboman/mason.nvim',
        opts = {
            ensure_installed = { 'lua-language-server', 'stylua' },
        },
    },
    {
        'nvim-treesitter/nvim-treesitter',
        opts = {
            ensure_installed = {
                'vim',
                'lua',
                'regex',
                'bash',
                'html',
                'css',
                'rust',
                'toml',
                'go',
                'gomod',
                'gosum',
                'svelte',
                'javascript',
                'typescript',
                'tsx',
                'markdown',
                'markdown_inline',
            },
        },
    },
    {
        'iamcco/markdown-preview.nvim',
        lazy = false,
        cmd = {
            'MarkdownPreviewToggle',
            'MarkdownPreview',
            'MarkdownPreviewStop',
        },
        build = 'cd app && yarn install',
        init = function()
            vim.g.mkdp_filetypes = { 'markdown' }
			vim.g.mkdp_theme = 'light'
        end,
        ft = { 'markdown' },
    },
}
