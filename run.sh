#!/usr/bin/env bash

source print_style.sh
package=$1
DOTFILES_ROOT=$(pwd -P)

exec_cmd () { ./$1/install.sh; }

case $package in
    all)
        info 'Installing dotfiles...'
        packages=(vim git tig tmux mypager arkade helm awscli tree commitizen openssl-1.1.1g php80)
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
    pre-install)
        if [ -d "$HOME/bin" ]; then
            info 'bin folder exist, ignore...'
        else
            info 'bin folder not exist, create bin folder' && mkdir $HOME/bin
        fi

        if [ -d "$HOME/local" ]; then
            info 'local folder exist, ignore...'
        else
            info 'local folder not exist, create bin folder' && mkdir $HOME/local
        fi

        info 'Installing dotfiles for pre-install...'
        packages=(curl oh-my-zsh pyenv oh-my-zsh-auto-jump phpbrew)
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
