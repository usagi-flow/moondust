--print("Loading whichkey configuration")

vim.o.timeoutlen = 100
vim.api.nvim_set_var("mapleader", "<Space>")
vim.api.nvim_set_var("maplocalleader", ",")

--require("which-key").setup {}

local wk = require("which-key")

wk.setup{}

local mappings = {
	f = {
		name = "file", -- optional group name
		f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
		--r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap=false, buffer = 123 }, -- additional options for creating the keymap
		n = { "New File" }, -- just a label. don't create any mapping
		e = "Edit File", -- same as above
		["1"] = "which_key_ignore",  -- special label to hide it in the popup
		b = { function() print("bar") end, "Foobar" } -- you can also pass functions!
	}
}

wk.register(mappings, {
	mode = "n", -- NORMAL mode
	-- prefix: use "<leader>f" for example for mapping everything related to finding files
	-- the prefix is prepended to every mapping part of `mappings`
	prefix = "<leader>",
	buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
	silent = true, -- use `silent` when creating keymaps
	noremap = true, -- use `noremap` when creating keymaps
	nowait = false, -- use `nowait` when creating keymaps
})

--[[vim.api.nvim_set_var("mapleader", "<Space>")
vim.api.nvim_set_var("maplocalleader", ",")

local wk = require('whichkey_setup')

wk.config {
	hide_statusline = false,
	default_keymap_settings = {
		silent=true,
		noremap=true,
	},
	default_mode = 'n',
}

local keymap = {

    w = {':w!<CR>', 'save file'}, -- set a single command and text
    j = 'split args', -- only set a text for an already configured keymap
    ['<CR>'] = {'@q', 'macro q'}, -- setting a special key
    f = { -- set a nested structure
        name = '+find',
        b = {'<Cmd>Telescope buffers<CR>', 'buffers'},
        h = {'<Cmd>Telescope help_tags<CR>', 'help tags'},
        c = {
            name = '+commands',
            c = {'<Cmd>Telescope commands<CR>', 'commands'},
            h = {'<Cmd>Telescope command_history<CR>', 'history'},
        },
        q = {'<Cmd>Telescope quickfix<CR>', 'quickfix'},
        g = {
            name = '+git',
            g = {'<Cmd>Telescope git_commits<CR>', 'commits'},
            c = {'<Cmd>Telescope git_bcommits<CR>', 'bcommits'},
            b = {'<Cmd>Telescope git_branches<CR>', 'branches'},
            s = {'<Cmd>Telescope git_status<CR>', 'status'},
        },
    }
}

wk.register_keymap('leader', keymap)

print("which-key setup finished")]]--
