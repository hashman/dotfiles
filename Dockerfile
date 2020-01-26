FROM ubuntu:18.04

RUN apt-get update && apt-get -y install vim curl git make gcc
