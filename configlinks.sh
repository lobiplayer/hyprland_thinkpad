#! /bin/bash
#
rm -r ~/.config/alacritty -f
ln -s $(pwd)/dotfiles/alacritty ~/.config/alacritty

rm -r ~/.config/nvim -f
ln -s $(pwd)/dotfiles/nvim ~/.config/nvim

rm -r ~/.config/lf -f
ln -s $(pwd)/dotfiles/lf ~/.config/lf

rm -r ~/.config/kitty -f
ln -s $(pwd)/dotfiles/kitty ~/.config/kitty

rm -r ~/.config/fish -f
ln -s $(pwd)/dotfiles/fish ~/.config/fish

rm -r ~/.config/hypr -f
ln -s $(pwd)/dotfiles/hypr ~/.config/hypr
