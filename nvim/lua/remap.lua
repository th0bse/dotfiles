vim.g.mapleader = " " -- set <leader> to spacebar

local wk = require('which-key')
local telescope = require('telescope.builtin')

local global_opts_leader = {
    mode = "n",   -- normal mode
    prefix = "<leader>",
    buffer = nil, -- global mappings
    silent = true,
    noremap = true,
    nowait = true,
}

local global_opts_noleader = {
    mode = "n",   -- normal mode
    prefix = "",
    buffer = nil, -- global mappings
    silent = true,
    noremap = true,
    nowait = true,
}

local global_mappings_leader = {
    -- native nvim stuff, no plugins used in here
    ["pv"] = { vim.cmd.Ex, "Open File Explorer" },
    ["y"] = { "\"+y", "Copy to System Clipboard" },

    -- telescope
    f = {
        name = "file",
        f = { telescope.find_files, "Find Files" },
        g = { telescope.git_files, "Find Files in Repo" },
        r = { telescope.oldfiles, "Find Recently Opened Files" },
    },
}

local global_mappings_noleader = {
}

-- purely for documentation purposes, no new mapings are created here
local global_mappings_docs = {
    ['<C-Space>'] = { "Open Completion Menu" },
}

wk.register(global_mappings_leader, global_opts_leader)
wk.register(global_mappings_noleader, global_opts_noleader)
wk.register(global_mappings_docs, global_opts_noleader)

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    local lsp_opts_leader = {
        mode = "n",
        prefix = "<leader>",
        buffer = bufnr,
        silent = true,
        noremap = true,
        nowait = true,
    }

    local lsp_mappings_leader = {
        g = {
            name = "position",
            d = { function() vim.lsp.buf.definition() end, "Goto Definition" },
            D = { function() vim.lsp.buf.declaration() end, "Goto Declaration" },
        },
        d = {
            name = "diagnostic",
            n = { function() vim.diagnostic.goto_next() end, "Goto Next Diagnostic" },
            p = { function() vim.diagnostic.goto_prev() end, "Goto Previous Diagnostic" },
            v = { function() vim.diagnostic.open_float() end, "View Diagnostic" },
        },
        s = {
            name = "show",
            a = { function() vim.lsp.buf.code_action() end, "Show Code Actions" },
            h = { function() vim.lsp.buf.signature_help() end, "Show Help for Symbol" },
        },
        v = {
            name = "variable",
            r = { function() vim.lsp.buf.rename() end, "Rename Variable" },
            R = { function() vim.lsp.buf.references() end, "Show References" },
        },
        r = {
            name = "refactor",
            f = { function() vim.lsp.buf.format() end, "Format Code" },
        },
    }

    wk.register(lsp_mappings_leader, lsp_opts_leader)
end
)
