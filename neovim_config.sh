#!/usr/bin/bash

# Starting from Version 7. we can use lua based setup using packer

if nvim --version | grep "NVIM v0.6"
then
    curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    cp init.vim "${XDG_DATA_HOME:-$HOME/.local/share}"/.config/nvim/nvim.init
    nvim -u NONE -c PlugInstall -c -q
else
    git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    nvim -u NONE -c PackerInstall -c -q
fi

python3 -m pip install neovim

#
# install language server pyright

sudo npm install -g neovim pyright
