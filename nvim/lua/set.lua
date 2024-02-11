vim.opt.nu = true -- enable line numbers
vim.opt.relativenumber = true -- enable relative line numbers

vim.opt.tabstop = 4 -- make tabs 4 characters long
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4 -- make indenting 4 characters instead of 8
vim.opt.expandtab = true -- use spaces instead of tabs

vim.opt.smartindent = true -- better indenting

vim.opt.wrap = false -- no linewraps

vim.opt.swapfile = false -- no swapfile
vim.opt.backup = false -- no backup file
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true -- persistent undo

vim.opt.hlsearch = false -- don't keep search highlights after searching
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8 -- always have at least 8 more lines visible when scrolling
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80" -- color the 80thcolumn to remind me to not have huge single lines of code :)
