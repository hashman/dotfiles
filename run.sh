#!/usr/bin/env bash

DOTFILES_ROOT=$(pwd -P)

info () { printf "\r  [ \033[00;34m..\033[0m ] $1\n"; }
exec_vim () { ./vim/install.sh; }
exec_zsh () { ./oh-my-zsh/install.sh; }
exec_git () { ./git/install.sh; }
exec_tig () { ./tig/install.sh; }
exec_tmux () { ./tmux/install.sh; }
exec_mypager () { ./mypager/install.sh; }
exec_helm () { ./helm/install.sh; }
exec_arkade () { ./arkade/install.sh; }
exec_awscli () { ./awscli/install.sh; }
exec_tree () { ./tree/install.sh; }

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
        [Yy]* ) info 'Install vim...'; exec_vim; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install zsh? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install zsh...'; exec_zsh; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install git? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install git...'; exec_git; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install tig? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install tig...'; exec_tig; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install tmux? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install tmux...'; exec_tmux; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install mypager? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install mypager...'; exec_mypager; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install arkade plugin? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install arkade plugin...'; exec_arkade; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install helm plugin? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install helm plugin...'; exec_helm; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install awscli? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install awscli...'; exec_awscli; break;;
        * ) break;;
    esac
done

while true; do
    read -p "Do you want to install tree? (y/n) " yn
    case $yn in
        [Yy]* ) info 'Install tree...'; exec_tree; break;;
        * ) break;;
    esac
done
