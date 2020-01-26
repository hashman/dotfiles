#!/bin/bash

BASEDIR=$(dirname "$0")
source $BASEDIR/../func.sh

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    runScript 'apt-get -y install tig'
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install tig
fi

cp $BASEDIR/tig.rc ~/.tigrc
