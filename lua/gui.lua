-- Neovide configuration
if vim.g.neovide then
	-- See: https://neovide.dev/configuration.html

	-- Set the initial neovide window size (TODO: doesn't work)
	--vim.o.columns = 160
	--vim.o.lines = 40
	--vim.g.neovide_remember_window_size = true

	-- Font
	vim.o.guifont = "Hasklug Nerd Font:h12"

	-- Window padding
	--vim.g.neovide_padding_top = 0
	--vim.g.neovide_padding_bottom = 0
	--vim.g.neovide_padding_right = 0
	--vim.g.neovide_padding_left = 0

	vim.g.neovide_cursor_vfx_mode = "pixiedust"
end
