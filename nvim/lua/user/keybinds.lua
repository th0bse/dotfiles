-- shorten function name
local keymap = vim.keymap.set
-- silent keymap option
local opts = { silent = true }

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- modes
-- normal mode: n
-- insert mode: i
-- visual mode: v
-- visual block mode: x
-- term mode: t
-- command mode: c

-- normal mode keybinds
-- window navigation with Ctrl + basic movement
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- resize windows with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- navigate buffers
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)

-- clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- visual mode keybinds
-- stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)


-- plugins
-- nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
