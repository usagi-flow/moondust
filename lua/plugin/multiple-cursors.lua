--[[
require("multiple-cursors").setup({
	custom_key_maps = {
		{"<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = {"n", "x"}}
	}
})

local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap
map("n", "<Ctrl-j>", "<Cmd>MultipleCursorsAddDown<CR>", opts)
]]--

return {
	{"<C-j>", "<Cmd>MultipleCursorsAddDown<CR>"},
	{"<C-Down>", "<Cmd>MultipleCursorsAddDown<CR>", mode = {"n", "i"}},
	{"<C-k>", "<Cmd>MultipleCursorsAddUp<CR>"},
	{"<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>", mode = {"n", "i"}},
	{"<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = {"n", "i"}},
	{"<Leader>a", "<Cmd>MultipleCursorsAddMatches<CR>", mode = {"n", "x"}},
}
