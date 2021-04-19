#!/bin/bash

#
# Setup script for developer environment
#

# Package Installation
sudo apt update -y ; sudo apt upgrade -y
sudo apt install -y vim
sudo apt install -y tree
sudo apt install -y terminator

# Bash
cp bash_aliases ~/.bash_aliases
source ~/.bashrc

# Vim
cp -r vim/ ~/.vim/
cp vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Terminator
cp terminator_config ~/.config/terminator/config
