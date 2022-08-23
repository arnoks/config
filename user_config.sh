#!/usr/bin/bash 

sudo dnf update -y
sudo dnf install -y neovim fish make gcc g++ tmux fzf npm
# allow remote log in by adding to fedora group
sudo useradd -m -G wheel,fedora -c "Arno Schamber" -s /usr/bin/fish vn401 
sudo mkdir ~vn401/.ssh
sudo cp ~fedora/.ssh/authorized_keys ~vn401/.ssh/ 
sudo chown -R vn401:vn401  ~vn401/.ssh

