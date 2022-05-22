#!/bin/bash

BASEDIR=$(dirname "$0")
CURRENT_DIR=$(pwd)

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    wget https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz -P /tmp
    cd /tmp && tar -zxf tmux-2.6.tar.gz && cd tmux-2.6
    ./configure --prefix=$HOME/local && make
    make install
    # clean
    rm -rf /tmp/tmux-*.tar.gz /tmp/tmux-* && cd $CURRENT_DIR
fi

cp $BASEDIR/tmux.conf ~/.tmux.conf
