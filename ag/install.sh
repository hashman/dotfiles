#!/bin/bash

wget https://geoff.greer.fm/ag/releases/the_silver_searcher-2.2.0.tar.gz -P /tmp
cd /tmp && tar -zxf the_silver_searcher-2.2.0.tar.gz && cd the_silver_searcher-2.2.0
./configure --prefix=$HOME/local/ag
make
make install
ln -s $HOME/local/ag/bin/ag $HOME/bin/ag
