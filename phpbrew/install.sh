#!/bin/bash

curl -L -O https://github.com/phpbrew/phpbrew/releases/latest/download/phpbrew.phar
chmod +x phpbrew.phar
mv phpbrew.phar $HOME/bin/phpbrew

echo '[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc' >> $HOME/.zshrc
phpbrew init
