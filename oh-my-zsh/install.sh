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

mkdir -p ~/.oh.my-zsh/custom/plugins

# Start install some plugin
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/tom-auger/cmdtime ~/.oh-my-zsh/custom/plugins/cmdtime
git clone https://github.com/wting/autojump.git && autojump && ./install.py && cd ..
