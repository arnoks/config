#!/usr/bin/bash
# install rust to user environment
cargo --version 
if [ $? -ne 0 ]
then
	echo "no rust version found, installing "
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

# install go system wide
GOPATH=/usr/local/go/bin/go 
if [[ -x $GOPATH ]] 
then
	$GOPATH version	
else
	echo "no go version found, installing "
	GOVERSION=go1.17.linux-amd64.tar.gz
	if [ ! -f $GOVERSION ] 
	then
		wget https://golang.org/dl/$GOVERSION
	fi
	sudo tar -C /usr/local -xzf $GOVERSION 
        /usr/local/go/bin/go install golang.org/x/tools/gopls@latest
fi
