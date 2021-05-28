#!/bin/bash

sudo apt-get update && sudo apt-get install -y apt-transport-https curl


curl https://releases.rancher.com/install-docker/19.03.sh | sh
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--write-kubeconfig=/home/ubuntu/.kube/config --write-kubeconfig-mode=644 " sh -s - server --docker --node-taint CriticalAddonsOnly=true:NoExecute

