#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
cp $BASEDIR/my.vim ~/.vimrc
cp $BASEDIR/editorconfig ~/.editorconfig
vim +PlugInstall +qall

echo "Install vim done..."
