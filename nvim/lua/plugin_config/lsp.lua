local lsp = require('lsp-zero')

-- set up neodev (for autoconfiguring the lua lsp)
require('neodev').setup({})

-- have mason make sure that at least these language servers are installed
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'jdtls',
        'lua_ls',
    },
    handlers = {
        lsp.default_setup,

        -- exclude jdtls from autoconfig, nvim-jdtls should have full control
        jdtls = lsp.noop,
    },
})

lsp.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»'
})

lsp.format_on_save({
    format_opts = {
        async = false,
        timeout_ms = 10000,
    },
    servers = {
        ['lua_ls'] = { 'lua' },
        ['jdtls'] = { 'java' },
    }
})

lsp.setup()
