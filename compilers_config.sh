#!/usr/bin/bash
# install rust to user environment
cargo --version 
if [ $? -ne 0 ]
then
	echo "no rust version found, installing "
	curl --proto 'https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
	mkdir -p ~/.local/bin
	curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
	 chmod +x ~/.local/bin/rust-analyzer
fi

# install go system wide
GOPATH=/usr/local/go/bin/go 
if [[ -x $GOPATH ]] 
then
	$GOPATH version	
else
	echo "no go version found, installing "
	GOVERSION=go1.19.linux-amd64.tar.gz
	if [ ! -f $GOVERSION ] 
	then
		wget https://golang.org/dl/$GOVERSION
	fi
	sudo tar -C /usr/local -xzf $GOVERSION 
        /usr/local/go/bin/go install golang.org/x/tools/gopls@latest
fi
