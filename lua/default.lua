--[[
" Own defaults
"set smartindent
set noexpandtab
set tabstop=4
set shiftwidth=4
]]

-- TODO: use vim.o/vim.bo/vim.wo once Neovim 0.5 is released
-- E.g.
-- vim.o.hlsearch = true

vim.cmd = vim.api.nvim_command

vim.cmd("set hlsearch")
vim.cmd("set incsearch")
vim.cmd("set ignorecase")

vim.cmd("set smartindent")
vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")

vim.o.nu = true
vim.o.rnu = true

-- Fold settings
vim.o.foldmethod = "syntax"
vim.o.foldlevel = 8 -- 0 would be the lowest (fold structs etc.)

-- Display space/tab characters
vim.o.list = true

-- Currently set in the whichkey config
--vim.o.timeoutlen = 400

vim.o.mouse = "a"

-- Attempt to use the system clipboard when yanking
vim.o.clipboard = "unnamedplus"

-- TODO: these require plugins (run after Packer?)
--vim.cmd("colorscheme lunar")
--vim.cmd("colorscheme spacegray")
--vim.cmd("colorscheme tokyonight")
vim.cmd("colorscheme iceberg")
