#!/usr/bin/bash

git config --global user.name "Arno Schamber"
git config --global user.email arno.schamber@deutsche-boerse.com
git config --global init.defaultBranch main
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.hist 'log --oneline --decorate --graph --all'
