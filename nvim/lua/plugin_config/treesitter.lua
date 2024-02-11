local tsc = require('nvim-treesitter.configs')

local setup = {
    ensure_installed = { "java", "latex", "c", "lua", "vim", "vimdoc", "query" },

    sync_install = false,

    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

tsc.setup(setup)
