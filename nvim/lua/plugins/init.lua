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
            ensure_installed = { 'lua-language-server' },
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
        'folke/noice.nvim',
        event = 'VeryLazy',
        lazy = false,
        dependencies = {
            'MunifTanjim/nui.nvim',
            'rcarriga/nvim-notify',
        },
        config = function()
            require('noice').setup {
                lsp = {
                    override = {
                        ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
                        ['vim.lsp.util.stylize_markdown'] = true,
                        ['cmp.entry.get_documentation'] = true,
                    },
                    signature = { enabled = false },
                    hover = { enabled = false },
                },
                presets = {
                    bottom_search = false, -- use a classic bottom cmdline for search
                    command_palette = true, -- position the cmdline and popupmenu together
                    long_message_to_split = true, -- long messages will be sent to a split
                    inc_rename = false, -- enables an input dialog for inc-rename.nvim
                    lsp_doc_border = false, -- add a border to hover docs and signature help
                },
            }
        end,
    },
}
