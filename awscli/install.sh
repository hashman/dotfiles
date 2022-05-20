#!/bin/bash

BASEDIR=$(dirname "$0")

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    ./aws/install -i ~/local/aws-cli -b ~/bin
    rm -rf aws awscliv2.zip
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install awscli
fi
