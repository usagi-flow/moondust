local function indentation()
	if ( vim.o.expandtab )
	then
		return "spaces"
	else
		return "tabs"
	end
end

local function banner()
	return "moondust"
end

require("lualine").setup {
	options = {
		icons_enabled = true,
		theme = 'auto',
		component_separators = { left = '│', right = '│'},
		section_separators = { left = '', right = ''},
		--component_separators = { left = '', right = ''},
		--section_separators = { left = '', right = ''},
		disabled_filetypes = {"NvimTree"},
		always_divide_middle = true,
		globalstatus = false,
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		--lualine_c = {'filename'},
		lualine_c = {'filename', "location"},
		--lualine_x = {'encoding', 'fileformat', 'filetype'},
		-- TODO: This would be a good section to add "progress" to,
		-- but it results in a bit too much horizontal space usage...
		lualine_x = {indentation, 'encoding', 'fileformat'},
		--lualine_y = {'progress'},
		--lualine_y = {'filetype'},
		lualine_y = {}, -- TODO: LSP info here?
		--lualine_z = {'location'}
		--lualine_z = {banner}
		lualine_z = { { "filetype", colored = false } }
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		--lualine_c = {'filename'},
		lualine_c = {'filename', "location"},
		lualine_x = {},
		lualine_y = {banner},
		lualine_z = {}
	},
	tabline = {},
	extensions = {}
}
