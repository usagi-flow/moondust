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
		disabled_filetypes = {},
		always_divide_middle = true,
		globalstatus = false,
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'branch', 'diff', 'diagnostics'},
		--lualine_c = {'filename'},
		lualine_c = {'filename', "location", "progress"},
		--lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_x = {indentation, 'encoding', 'fileformat'},
		--lualine_y = {'progress'},
		lualine_y = {'filetype'},
		--lualine_z = {'location'}
		lualine_z = {banner}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {},
	extensions = {}
}
