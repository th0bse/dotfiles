vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- fuzzy finder for files, buffers, etc
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  -- the ONE colorscheme to rule them all
  use 'morhetz/gruvbox'

  -- treesitter for better syntax highlighting
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  -- undo tree, makes it easy to see the undo history, as a tree instead of just
  -- linear history
  use 'mbbill/undotree'

  -- GitHub Copilot and copilot as a completion source
  use 'zbirenbaum/copilot.lua'
  use {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
  }

  -- autocomplete, snippets, lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      {
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocomplete
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
    }

  }
  --
  -- status line plugin
  use { 'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Java development
  use 'mfussenegger/nvim-jdtls'
end)
