FROM ubuntu:18.04

RUN apt-get update && apt-get -y install git vim curl wget make g++ libevent-dev ncurses-dev zlib1g-dev build-essential libssl-dev libreadline-dev libbz2-dev libsqlite3-dev llvm libncurses5-dev
