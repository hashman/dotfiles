#!/usr/bin/env bash

DOTFILES_ROOT=$(pwd -P)

exec_cmd () { ./$1/install.sh; }

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

case $package in
    all)
        info 'Installing dotfiles for pre-install...'
        packages=(oh-my-zsh pyenv oh-my-zsh-auto-jump)
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
