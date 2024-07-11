--: Theming {{{

--vim.o.fillchars = "eob: ,vert:│"
vim.o.fillchars = "eob: "

vim.o.termguicolors = true

--vim.cmd("colorscheme doom-one")
require("catppuccin").setup({
	transparent_background = true
})
if os.getenv("COLOR_SCHEME") == "2" then
	vim.cmd("colorscheme catppuccin-latte")
else
	vim.cmd("colorscheme catppuccin-macchiato")
end

-- Way too slow
--vim.cmd("colorscheme tokyonight")
--vim.cmd("colorscheme lunar")

-- Only the separator background is visible
--vim.g.spacegray_low_contrast = true
--vim.cmd("colorscheme spacegray")
--vim.cmd("colorscheme iceberg")

-- No visible separator at all
--vim.cmd("colorscheme tender")

-- win-specific
if vim.api.nvim_call_function("has", {"win32"}) == 1 then
	vim.o.shell = "zsh.exe"
	vim.o.shellcmdflag = "-c"
	vim.o.shellpipe = "2>&1 | tee"
	vim.o.shellxquote = ""
end

--: }}}

-- Search settings
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true

-- A tab key should insert a tab character
vim.o.smartindent = true
vim.o.expandtab = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = nil
vim.g.markdown_recommended_style = 0

-- Hybrid numbers (relative + active line number)
vim.o.nu = true
vim.o.rnu = true

-- Fold settings
vim.o.foldmethod = "syntax"
vim.o.foldlevel = 8 -- 0 would be the lowest (fold structs etc.)

-- Display space/tab characters
vim.o.list = true

-- Currently set in the whichkey config
--vim.o.timeoutlen = 400

-- Automatically load external file changes (undo with 'u')
vim.o.autoread = true

-- Always display one line/two characters around the cursor
vim.o.scrolloff = 1
vim.o.sidescrolloff = 2

vim.o.mouse = "a"

-- Attempt to use the system clipboard when yanking
vim.o.clipboard = "unnamedplus"

-- Highlight yanked text (:h lua-highlight)
vim.api.nvim_command("au TextYankPost * silent! lua vim.highlight.on_yank()")

-- Don't add an extra newline at the end of files
vim.cmd("set nofixendofline")
