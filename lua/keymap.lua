local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

vim.api.nvim_set_var("mapleader", " ") -- Can't use <space> here
vim.api.nvim_set_var("maplocalleader", ",")

map("n", "<leader>", ":WhichKey '<Space>'<CR>", { silent = true })

-- Stay in visual mode when indenting
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
