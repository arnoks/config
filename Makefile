

TMUXCONF=~/.tmux.conf
INITVIM=~/.config/nvim/init.vim 

all: ${INITVIM} ${TMUXCONF}

~/.config/nvim/init.vim: init.vim
	cp  $< $@ 

~/.tmux.conf: tmux.conf 
	cp  $< $@
