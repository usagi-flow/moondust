local path = vim.fn.stdpath("config")

-- Allow modules to be loaded as packages
package.path = package.path .. ";" .. path .. "/modules/?/init.lua"
package.path = package.path .. ";" .. path .. "/modules/?/lua/?.lua"

-- Allow loading packages from packer/lua
package.path = package.path .. ";" .. path .. "/modules/packer/lua/?.lua"
package.path = package.path .. ";" .. path .. "/modules/packer/lua/?/init.lua"

-- Ensure the config path is on the runtimepath, otherwise the colorscheme can't be loaded
local rtp = vim.api.nvim_get_option("rtp")
vim.api.nvim_set_option("rtp", path .. "," .. rtp)

-- Plugin/package management requires Neovim >= 0.5 at least
--print("loading: plugin")
require("plugin")

--print("loading: default")
require("default")

--print("loading: config")
require("config")