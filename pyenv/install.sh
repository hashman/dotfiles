#!/bin/bash

BASEDIR=$(dirname "$0")
CURRENT_DIR=$(pwd)

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    git clone https://github.com/pyenv/pyenv.git ~/.pyenv
    cd ~/.pyenv && src/configure && make -C src && cd $CURRENT_DIR
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install pyenv
fi

pyenv install 3.8.12
pyenv global 3.8.12
