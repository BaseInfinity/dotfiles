#!/bin/bash

cp vimrc ~/.vimrc
cp bashrc ~/.bashrc
cp tmux.conf ~/.tmux.conf

mkdir -p ~/.vim/colors
mkdir -p ~/.themes/solarized/tmux-colors-solarized

cp solarized.vim ~/.vim/colors/solarized.vim
cp tmuxcolors-dark.conf ~/.themes/solarized/tmux-colors-solarized/tmuxcolors-dark.conf 
