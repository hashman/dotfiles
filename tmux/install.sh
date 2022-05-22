#!/bin/bash

BASEDIR=$(dirname "$0")

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    wget https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz
    tar xvf tmux-2.6.tar.gz cd tmux-2.6
    ./configure --prefix=$HOME/local && make
    make install
    # clean
    cd .. && rm -rf tmux-2.6.tar.gz tmux-2.6
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install tmux
fi

cp $BASEDIR/tmux.conf ~/.tmux.conf
