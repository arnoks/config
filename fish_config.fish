#!/usr/bin/env fish
mkdir -p $HOME/bin $HOME/.local/bin $HOME/.cargo/bin 

#
fish_add_path --prepend $HOME/bin $HOME/.local/bin $HOME/.cargo/bin 
# install oh my fish plugin 
curl -L https://get.oh-my.fish | fish 
# Use the powerline theme
echo "run  omf install emoji-powerline "


