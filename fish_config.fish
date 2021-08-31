#!/usr/bin/fish
# install oh my fish plugin 
abbr -a vim nvim
curl -L https://get.oh-my.fish | fish
# Use the fishbone theme
omf install fishbone
echo "fish_add_path --prepend $HOME/bin $HOME/.local/bin" > $HOME/.config/fish/config.fish

