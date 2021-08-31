#!/usr/bin/bash
# install rust to user environment
cargo --version 
if [ $? -ne 0 ]
then
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

GO=/usr/local/go/bin/go 
if [[ -x $GO ]] 
then
	$GO version	
else
	sudo cd /usr/local && wget https://golang.org/dl/go1.17.linux-amd64.tar.gz
	sudo tar -C /usr/local -xzf go1.17.linux-amd64.tar.gz # get the latest version of go
	#sudo dnf install golang-bin.x86_64 # install version 16 from official repo
        /usr/local/go/bin/go install golang.org/x/tools/gopls@latest
fi
