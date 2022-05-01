-- Install packer:
-- cd ~/.config/nvim && mkdir -p pack/packer/start && cd pack/packer/start
-- git clone https://github.com/wbthomason/packer.nvim.git

-- This file can be loaded by calling `lua require('plugin')` from your init.vim

-- Only required if you have packer configured as `opt`
--vim.cmd [[packadd packer.nvim]]
-- Only if your version of Neovim doesn't have https://github.com/neovim/neovim/pull/12632 merged
--vim._update_package_paths()

--print("- loading packer")
local packer = require("packer").startup(function(use)
	-- Packer
	use "wbthomason/packer.nvim"

	use "cocopon/iceberg.vim"

	use {
		"AckslD/nvim-whichkey-setup.lua",
		requires = {"liuchengxu/vim-which-key"}
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {
		'kyazdani42/nvim-tree.lua',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

--	use {
--		'goolord/alpha-nvim',
--		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
--		config = function ()
--			require("plugin.alpha")
--		end
--	}


end)

require("plugin.whichkey")
require("plugin.lualine")
require("plugin.nvimtree")

return packer
