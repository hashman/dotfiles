#!/usr/bin/env bash

BASEDIR=$(dirname "$0")
cp $BASEDIR/my.vim ~/.vimrc
vim +PlugInstall +qall

echo "Install vim done..."
