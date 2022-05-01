--require("nvim-tree.events").on_nvim_tree_ready(function()
--	vim.cmd("NvimTreeRefresh")
--end)
require("nvim-tree").setup {
	open_on_setup = false,
	open_on_setup_file = false
}
