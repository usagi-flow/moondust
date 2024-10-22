vim.o.timeout = true
vim.o.timeoutlen = 0

local wk = require("which-key")

local opts = {
	prefix = "<leader>"
}

local mappings = {
	["?"] = { "<cmd>Telescope commands<cr>", "Browse commands" },
	["1"] = { "1<C-w>w", "Window 1" },
	["2"] = { "2<C-w>w", "Window 2" },
	["3"] = { "3<C-w>w", "Window 3" },
	["4"] = { "4<C-w>w", "Window 4" },
	["5"] = { "5<C-w>w", "Window 5" },
	["6"] = { "6<C-w>w", "Window 6" },
	["7"] = { "7<C-w>w", "Window 7" },
	["8"] = { "8<C-w>w", "Window 8" },
	["9"] = { "9<C-w>w", "Window 9" },
	["<up>"] = { "<C-w><up>", "Window top" },
	["<down>"] = { "<C-w><down>", "Window bottom" },
	["<left>"] = { "<C-w><left>", "Window left" },
	["<right>"] = { "<C-w><right>", "Window right" },
	[";"] = { "<cmd>e " .. vim.fn.stdpath("config") .. "/lua/default.lua <cr>", "Dashboard" },
	a = {
		name = "+Applications",
		["t"] = { "<cmd>terminal<cr>i", "Terminal buffer" },
		["T"] = { "<cmd>ToggleTerm<cr>", "Terminal window" }
	},
	b = {
		name = "+Buffers",
		["1"] = { "<cmd>1buffer<cr>", "Buffer 1" },
		["2"] = { "<cmd>2buffer<cr>", "Buffer 2" },
		["3"] = { "<cmd>3buffer<cr>", "Buffer 3" },
		["4"] = { "<cmd>4buffer<cr>", "Buffer 4" },
		["5"] = { "<cmd>5buffer<cr>", "Buffer 5" },
		["6"] = { "<cmd>6buffer<cr>", "Buffer 6" },
		["7"] = { "<cmd>7buffer<cr>", "Buffer 7" },
		["8"] = { "<cmd>8buffer<cr>", "Buffer 8" },
		["9"] = { "<cmd>9buffer<cr>", "Buffer 9" },
		--a = { "", "Add perspective buffer" },
		b = { "<cmd>Telescope buffers<cr>", "List buffers" }, -- TODO: see existing "Find buffer" keybinding
		d = { "<cmd>bdelete<cr>", "Close buffer" },
		D = { "<cmd>bdelete!<cr>", "Kill buffer" },
		--["<C-d>"] = { "<cmd>BufferCloseAllButCurrent<cr>", "Close other buffers" }, -- TODO: doesn't seem to work
		n = { "<cmd>bnext<cr>", "Next buffer" },
		p = { "<cmd>bprevious<cr>", "Previous buffer" },
		s = { "<cmd>enew<cr>", "New scratch buffer" }
	},
	f = {
		name = "+Files",
		-- TODO: this should be in <space>pf, but what do we need here?
		f = { "<cmd>Telescope find_files<cr>", "Find file" },
		s = { "<cmd>w<cr>", "Save" },
		S = { "<cmd>wa<cr>", "Save all" },
		t = { "<cmd>Neotree toggle<cr>", "Toggle file tree" }
		--t = { "<cmd>lua require'nvim_tree'.toggle_tree()<cr>", "Toggle file tree (*)" }
	},
	q = {
		name = "+Quit",
		q = { "<cmd>qa<cr>", "Quit Neovim" },
		Q = { "<cmd>qa!<cr>", "Kill Neovim" }
	},
	T = {
		name = "+Themes",
		s = { "<cmd>Telescope colorscheme<cr>", "Browse themes" }
	},
	w = {
		-- TODO: code duplication of quick access elements
		name = "+Windows",
		["1"] = { "1<C-w>w", "Window 1" },
		["2"] = { "2<C-w>w", "Window 2" },
		["3"] = { "3<C-w>w", "Window 3" },
		["4"] = { "4<C-w>w", "Window 4" },
		["5"] = { "5<C-w>w", "Window 5" },
		["6"] = { "6<C-w>w", "Window 6" },
		["7"] = { "7<C-w>w", "Window 7" },
		["8"] = { "8<C-w>w", "Window 8" },
		["9"] = { "9<C-w>w", "Window 9" },
		["<up>"] = { "<C-w><up>", "Window top" },
		["<down>"] = { "<C-w><down>", "Window bottom" },
		["<left>"] = { "<C-w><left>", "Window left" },
		["<right>"] = { "<C-w><right>", "Window right" },
		["="] = { "<C-w>=", "Balance window areas" },
		d = { "<C-w>q", "Close window" },
		s = { "<C-w>s<C-w><up>", "Split window below" },
		v = { "<C-w>v<C-w><left>", "Split window right" },
		S = { "<C-w>S", "Split & focus window below" },
		V = { "<C-w>V", "Split & focus window right" }
	}
}

wk.register(mappings, opts)

-- In case we want to use an opaque background for wk only
--vim.api.nvim_set_hl(0, "WhichKeyFloat", vim.api.nvim_get_hl(0, {name = "Normal"}))
