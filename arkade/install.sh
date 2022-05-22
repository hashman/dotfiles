#!/usr/bin/env bash

CURRENT_PATH=$(pwd)

cd /tmp && curl -sLS https://get.arkade.dev | sh
mv arkade $HOME/bin
arkade get k9s
arkade get eksctl
arkade get kustomize
arkade get argocd
arkade get helm

echo "Install arkade and plugin done..."
