return {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    opts = {
        keymap = {
            preset = 'default',

            ['<TAB>'] = { 'select_next', 'fallback' },
            ['<S-TAB>'] = { 'select_prev', 'fallback' },
            ['<C-space>'] = { function(cmp) cmp.show({ providers = { 'snippets' } }) end },
            ['<CR>'] = { 'accept', 'fallback' }
        }
    },
}
