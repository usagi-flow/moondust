-- This file defines the plugins to be used, and, when a plugin is loaded,
-- calls the configuration file `lua/plugin/<plugin-name>.lua`.

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=v10.20.3",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- TODO: duplicated in default.lua
function get_color_scheme()
	if os.getenv("COLOR_SCHEME") == "2" then
		return "catppuccin-latte"
	else
		return "catppuccin-macchiato"
	end
end

local lazyopts = {
	defaults = {
		lazy = true
	},
	install = {
		colorscheme = { get_color_scheme() }
	},
	ui = {
		border = "single"
	}
}

require("lazy").setup({
	-- Colorscheme
	--"romgrk/doom-one.vim"
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require("plugin.lualine")
		end
	},

	{
		"brenton-leighton/multiple-cursors.nvim",
		tag = "v0.9",
		event = "VeryLazy",
		opts = {}, -- Implicitly calls setup()
		keys = require("plugin.multiple-cursors")
	},

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		event = "VeryLazy",
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	{
		"folke/which-key.nvim",
		tag = "v1.6.0",
		event = "VeryLazy",
		init = function ()
			require("plugin.which-key")
		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			window = {
				-- Either set the border but leave a transparent BG,
				-- or set an opaque BG
				border = "single",

				-- The BG color is invisible if we use a transparent BG;
				-- in order to have a visible BG, the "WhichKeyFloat" highlight group should be set.
				-- If `winblend == 100`, the HL group value doesn't matter.
				--winblend = 100
			}
		}
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		tag = "3.25",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		opts = {
			window = {
				mappings = {
					["<space>"] = "none"
				}
			}
		},
		cmd = "Neotree"
	},

	{
		"NoahTheDuke/vim-just",
		event = "BufReadPre justfile"
	},

	{
		"cyberkov/openhab-vim",
		event = "BufReadPre *.things,*.items,*.rules,*.sitemap,*.persist"
	}
}, lazyopts)
