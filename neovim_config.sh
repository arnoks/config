#!/usr/bin/bash x

curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vimrc.viml "${XDG_DATA_HOME:-$HOME/.local/share}"/.config/nvim/nvim.init 
nvim -u NONE -c PlugInstall -c -q 


python3 -m pip install neovim
sudo npm -g neovim pyright 
