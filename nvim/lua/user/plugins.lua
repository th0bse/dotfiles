local fn = vim.fn

local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- autocommand to reload nvim whenever this file gets saved
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

local packer = require("packer")

-- have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
    git = {
        clone_timeout = 300, -- timeout, in seconds, for git clones of plugins
    },
}

return packer.startup(function(use)
    -- plugins go here
    use "wbthomason/packer.nvim" -- have packer manage itself
    use "morhetz/gruvbox" -- the ONE colorscheme to rule them all
    use { 
        "nvim-lualine/lualine.nvim", -- status line plugin
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
    use {
        "nvim-tree/nvim-tree.lua", -- file explorer plugin
        requires = {
            "nvim-tree/nvim-web-devicons", -- optional, for file icons
        }
    }
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)

