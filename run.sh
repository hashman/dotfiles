#!/usr/bin/env bash

package=$1

DOTFILES_ROOT=$(pwd -P)

info () { printf "\r  [ \033[00;34m..\033[0m ] $1\n"; }
exec_cmd () { ./$1/install.sh; }
exec_vim () { ./vim/install.sh; }
exec_git () { ./git/install.sh; }
exec_tig () { ./tig/install.sh; }
exec_tmux () { ./tmux/install.sh; }
exec_mypager () { ./mypager/install.sh; }
exec_helm () { ./helm/install.sh; }
exec_arkade () { ./arkade/install.sh; }
exec_awscli () { ./awscli/install.sh; }
exec_tree () { ./tree/install.sh; }

case $package in
    all)
        info 'Installing dotfiles...'

        while true; do
            read -p "Do you want to install vim? (y/n) " yn
            case $yn in
                [Yy]* ) info 'Install vim...'; exec_vim; break;;
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
        ;;
    *)
        exec_cmd $package
        ;;
esac
