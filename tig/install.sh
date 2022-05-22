#!/bin/bash

BASEDIR=$(dirname "$0")
CURRENT_DIR=$(pwd)

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    wget https://github.com/jonas/tig/releases/download/tig-2.5.4/tig-2.5.4.tar.gz -P /tmp
    cd /tmp && tar -zxf tig-2.5.4.tar.gz && cd tig-2.5.4
    make && make install
    # clean
    rm -rf /tmp/tig-*.tar.gz /tmp/tig-* && cd $CURRENT_DIR
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install tig
fi

cp $BASEDIR/tigrc ~/.tigrc
