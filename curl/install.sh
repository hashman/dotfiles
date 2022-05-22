#!/bin/bash

git clone https://github.com/curl/curl.git /tmp/curl
cd /tmp/curl && ./configure --with-openssl --prefix=$HOME/local
make && make install
