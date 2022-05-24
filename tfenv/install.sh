#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    git clone https://github.com/tfutils/tfenv.git $HOME/.tfenv
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install tfenv
fi
