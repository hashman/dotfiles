#!/bin/bash

BASEDIR=$(dirname "$0")
source $BASEDIR/../func.sh

export CHSH=no

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    runScript 'apt-get -y install zsh'
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install zsh
fi

runScript 'chsh -s /bin/zsh'

cp oh-my-zsh/alias_config ~/.alias_config
cp oh-my-zsh/zshrc ~/.zshrc

git clone -c core.eol=lf -c core.autocrlf=false \
		-c fsck.zeroPaddedFilemode=ignore \
		-c fetch.fsck.zeroPaddedFilemode=ignore \
		-c receive.fsck.zeroPaddedFilemode=ignore \
		--depth=1 --branch master https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
