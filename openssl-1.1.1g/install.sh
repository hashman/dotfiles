#!/bin/bash

wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz -P /tmp
cd /tmp && tar -zxf openssl-1.1.1g.tar.gz && cd openssl-1.1.1g
./config --prefix=$HOME/local
make
make install
