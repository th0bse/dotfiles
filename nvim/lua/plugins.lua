vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- colorscheme (the one and only)
    use 'ellisonleao/gruvbox.nvim'

    -- display possible keybinds
    use 'folke/which-key.nvim'

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- neovim and tmux integration
    use 'christoomey/vim-tmux-navigator'

    -- treesitter for better syntax highlighting
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- fuzzy finder for files, buffers, etc.
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    -- file tree
    use {
        'nvim-neo-tree/neo-tree.nvim', branch = 'v3.x',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
        }
    }


    -- lsp autoconfig and related stuff with lsp-zero
    use {
        'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
        requires = {
            -- lsp support
            { 'neovim/nvim-lspconfig' },
            -- automatically install lsps
            {
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            -- lsp autoconfig
            { 'williamboman/mason-lspconfig.nvim' },
            -- autocomplete
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            -- snippets
            { 'L3MON4D3/LuaSnip' },
        }
    }

    -- autoconfigure Lua LSP for neovim config and stuff
    use 'folke/neodev.nvim'

    -- Java development
    use 'mfussenegger/nvim-jdtls'
    use 'mfussenegger/nvim-dap'
end)
