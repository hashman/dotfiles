#!/bin/bash

BASEDIR=$(dirname "$0")
source $BASEDIR/../func.sh

curl -o $BASEDIR/mypager https://raw.githubusercontent.com/romuald/mypager/master/mypager
chmod +x $BASEDIR/mypager

runScript "mv $BASEDIR/mypager /usr/local/bin/"
cp $BASEDIR/my.cnf ~/.my.cnf
cp $BASEDIR/mypager.conf ~/.mypager.conf
