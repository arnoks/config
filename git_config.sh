#!/usr/bin/bash

if [[ $# > 1 ]] 
then
	git config --global user.name $1 
	git config --global user.email $2
else
	echo "user.name and user.email not set"
fi 
git config --global init.defaultBranch main
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.hist 'log --oneline --decorate --graph --all'
