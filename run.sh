#!/usr/bin/env bash

DOTFILES_ROOT=$(pwd -P)

info () {
    printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

info 'Installing dotfiles...'

info 'Install vim...'
./vim/install.sh
