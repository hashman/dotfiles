#!/usr/bin/env bash

DOTFILES_ROOT=$(pwd -P)

info () {
    printf "\r  [ \033[00;34m..\033[0m ] $1\n"
}

info 'Installing dotfiles...'

if [ ! -d "~/bin" ]; then
    info 'bin folder not exist, create bin folder'
    mkdir ~/bin
fi

if [ ! -d "~/local" ]; then
    info 'local folder not exist, create local folder'
    mkdir ~/local
fi

while true; do
    read -p "Do you want to install vim? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install vim...'; ./vim/install.sh; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install zsh? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install zsh...'; ./oh-my-zsh/install.sh; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install git? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install git...'; ./git/install.sh; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install tig? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install tig...'; ./tig/install.sh; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install tmux? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install tmux...'; ./tmux/install.sh; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install mypager? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install mypager...'; ./mypager/install.sh; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install helm plugin? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install helm plugin...'; ./helm/install.sh; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install arkade plugin? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install arkade plugin...'; ./arkade/install.sh; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install awscli? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install awscli...'; ./awscli/install.sh; break;;
        * ) break;;
    esac
done
