#!/usr/bin/bash +x


function install_plugin {
	PLUGIN=$1
	REPO=$2
	FOLDER="${HOME}/.local/share/nvim/site/pack/${PLUGIN}/start"
	echo "Installing $PLUGIN from $REPO into $FOLDER"
	mkdir -p $FOLDER || exit $?
	cd $FOLDER 
	git clone $REPO $PLUGIN || exit $?
	nvim -u NONE -c helptags ${PLUGIN}/doc -c q || exit $?
}


#install_plugin airline https://github.com/vim-airline/vim-airline.git

install_plugin fugitive https://github.com/tpope/vim-fugitive.git 
