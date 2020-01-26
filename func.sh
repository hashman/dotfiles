#!/bin/bash

runScript () {
    if [[ `whoami` == "root" ]]; then
        $1
    else
        sudo $1
    fi
}
