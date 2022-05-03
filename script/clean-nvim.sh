#!/bin/sh

set -e

rm -rfv ~/.cache/nvim
rm -rfv ~/.local/share/nvim
rm -rfv ~/.config/nvim/plugin

# ./clean-nvim.sh && nvim -u test.lua --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
