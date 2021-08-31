#!/usr/bin/bash 

curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vimrc.viml "$HOME/.vim/pack/share}"/.config/nvim/nvim.init 
vim -u NONE -c PlugInstall -c -q 

