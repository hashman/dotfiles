#!/bin/bash

BASEDIR=$(dirname "$0")

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    git clone https://github.com/kddnewton/tree.git $BASEDIR/tree/tree
    cp $BASEDIR/tree/tree/tree.sh $HOME/bin/tree
    rm -rf $BASEDIR/tree/tree
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install tree
fi
