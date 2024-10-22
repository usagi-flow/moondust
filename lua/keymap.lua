local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

vim.g.mapleader = " " -- Can't use <space> here
vim.g.maplocalleader = ","

-- Indent with a single key press only
map("n", ">", ">>", opts)
map("n", "<", "<<", opts)

-- Stay in visual mode when indenting
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

map("n", "ge", "G$", opts)
map("v", "ge", "G$", opts)

map("n", "gh", "0", opts)
map("v", "gh", "0", opts)

map("n", "gl", "$", opts)
map("v", "gl", "$", opts)
