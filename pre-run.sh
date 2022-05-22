#!/usr/bin/env bash

DOTFILES_ROOT=$(pwd -P)

info () { printf "\r  [ \033[00;34m..\033[0m ] $1\n"; }
exec_zsh () { ./oh-my-zsh/install.sh; }
exec_pyenv () { ./pyenv/install.sh; }
exec_zsh_autojump () { ./oh-my-zsh-auto-jump/install.sh; }

info 'Installing dotfiles for pre-install...'

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

while true; do
    read -p "Do you want to install zsh? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install zsh...'; exec_zsh; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install pyenv? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install pyenv...'; exec_pyenv; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install zsh autojump? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install zsh autojump...'; exec_zsh_autojump; break;;
        * ) break;;
    esac
done
