#!/bin/bash

BASEDIR=$(dirname "$0")
source $BASEDIR/../func.sh

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    runScript 'apt-get -y install tmux'
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install tmux
fi

cp $BASEDIR/tmux.conf ~/.tmux.conf
