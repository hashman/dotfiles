#!/bin/bash

BASEDIR=$(dirname "$0")

curl -o $BASEDIR/mypager https://raw.githubusercontent.com/romuald/mypager/master/mypager
chmod +x $BASEDIR/mypager

runScript "mv $BASEDIR/mypager $HOME/bin/"
cp $BASEDIR/my.cnf ~/.my.cnf
cp $BASEDIR/mypager.conf ~/.mypager.conf
