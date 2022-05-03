#!/usr/bin/env bash

curl -sLS https://get.arkade.dev | sudo sh
arkade get k9s
arkade get eksctl
arkade get kustomize
arkade get argocd
arkade get helm

echo "Install arkade and plugin done..."
