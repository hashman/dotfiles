#!/usr/bin/env bash

DOTFILES_ROOT=$(pwd -P)

info () {
    printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

install_dotfiles () {
    info 'Installing dotfiles'

    find $DOTFILES_ROOT -name install.sh -exec dirname {} \; | xargs -I@ -n1 /usr/bin/env bash @/install.sh
}

install_dotfiles
