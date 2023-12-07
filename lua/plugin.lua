-- This file defines the plugins to be used, and, when a plugin is loaded,
-- calls the configuration file `lua/plugin/<plugin-name>.lua`.

-- To initially install and clean packages without starting a (possibly unconfigured) nvim instance:
-- nvim --headless -c "autocmd User PackerComplete quitall" -c "PackerSync"

--print("- loading packer")
local packer = require("packer").startup(function(use)
	-- Packer
	use "wbthomason/packer.nvim"

	-- TODO: investigate lewis6991/impatient.nvim

	-- Colorscheme
	use "romgrk/doom-one.vim"

	-- TODO: latest version is unstable
	--use {
	--	'kyazdani42/nvim-tree.lua',
	--	requires = { 'kyazdani42/nvim-web-devicons' },
	--	--requires = { 'kyazdani42/nvim-web-devicons', opt = true },
	--	--cmd = { "NvimTreeToggle", "NvimTreeOpen" },
	--	config = function()
	--		-- TODO: NvimTree has issues with this
	--		require("plugin.nvimtree")
	--		--require'nvim-tree'.setup {}
	--		--require("nvim-tree").on_enter() -- Required when lazy loading NvimTree
	--	end
	--}

	use {
		"AckslD/nvim-whichkey-setup.lua",
		requires = {"liuchengxu/vim-which-key"},
		config = function()
			require("plugin.whichkey")
		end
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require("plugin.lualine")
		end
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- TODO:
	-- nvim-lspconfig
	-- nvim-lsp-installer
	-- cmp-nvim-lsp

-- TODO: alpha (dashboard) doesn't work well
--	use {
--		'goolord/alpha-nvim',
--		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
--		config = function ()
--			require("plugin.alpha")
--		end
--	}
end)

-- TODO: seems like NvimTree doesn't like being loaded from the config callback
--if packer.packer_plugins["nvim-tree.lua"] and packer.packer_plugins["nvim-tree.lua"].loaded then
--	require("plugin.nvimtree")
--end
--require("plugin.nvimtree")

return packer
