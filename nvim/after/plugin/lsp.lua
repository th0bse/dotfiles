local lsp = require('lsp-zero').preset({
  manage_nvim_cmp = {
    set_sources = 'recommended'
  }
})

-- keybindings, those are only active in a buffer with a running language server
lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "<leader>nd", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "<leader>pd", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>fd", function() vim.lsp.buf.code_action() end, opts)
end)

-- have mason make sure that at least these language servers are installed
lsp.ensure_installed({
  'tsserver',
  'eslint',
  'jdtls',
  'lua_ls',
  'kotlin_language_server'
})

-- setup lua language server
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

local cmp = require('cmp')

-- we want nvim-jdtls to have full control over the setup
lsp.skip_server_setup({ 'jdtls' })

lsp.setup()

local cmp_action = require('lsp-zero').cmp_action()

-- setup of autocomplete
cmp.setup({
  sources = {
    { name = 'copilot' },
    { name = 'path' },
    { name = 'nvim_lsp' },
    { name = 'buffer',  keyword_length = 3 },
    { name = 'luasnip', keyword_length = 2 },
  },
  mapping = {
    ['<Tab>'] = cmp_action.luasnip_supertab(),
    ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
    ['<CR>'] = cmp.mapping.confirm({
      select = false,
      behavior = cmp.ConfirmBehavior.Replace, }),
  }
})
