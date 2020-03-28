#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
mkdir -p ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim

mkdir ~/.nvim
ln -s ~/.vim/autoload ~/.nvim/autoload

# Install vim-gitgutter
mkdir -p ~/.config/nvim/pack/airblade/start
cd ~/.config/nvim/pack/airblade/start
git clone https://github.com/airblade/vim-gitgutter.git
nvim -u NONE -c "helptags vim-gitgutter/doc" -c q
cd $BASEDIR
