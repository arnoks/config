#!/usr/bin/env fish
# install oh my fish plugin 
abbr -a vim nvim
# curl -L https://get.oh-my.fish | fish 
# Use the fishbone theme
# omf install  emoji-powerline # does not work in container
fish_add_path --prepend $HOME/bin $HOME/.local/bin $HOME/.cargo/bin 

