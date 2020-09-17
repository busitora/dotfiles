TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
link:
	ln -s $(TOP_DIR)/.vimrc ~/.vimrc
	ln -s $(TOP_DIR)/.tmux.conf ~/.tmux.conf
	ln -s $(TOP_DIR)/.editorconfig ~/.editorconfig
	ln -s $(TOP_DIR)/.tigrc ~/.tigrc

clean:
	rm -f ~/.vimrc
	rm -f ~/.tmux.conf
	rm -f ~/.editorconfig
	rm -f ~/.tigrc
