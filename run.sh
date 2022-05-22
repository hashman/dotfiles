#!/usr/bin/env bash

source print_style.sh
package=$1
DOTFILES_ROOT=$(pwd -P)

exec_cmd () { ./$1/install.sh; }

case $package in
    all)
        info 'Installing dotfiles...'
        packages=(vim git tig tmux mypager arkade helm awscli tree)
        for pack in "${packages[@]}"; do
            while true; do
                read -p "Do you want to install $pack? (y/n) " yn
                case $yn in
                    [Yy]* ) info "Install $pack..."; exec_cmd $pack; break;;
                    * ) break;;
                esac
            done
        done
        ;;
    *)
        if [ -d "$package" ]; then
            exec_cmd $package
        else
            warning 'package not found...'
        fi
        ;;
esac
