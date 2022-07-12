#!/bin/bash

sudo apt-get update && sudo apt-get install -y apt-transport-https curl


curl https://releases.rancher.com/install-docker/19.03.sh | sh

export K3S_TOKEN={K3S_TOKEN}::server:62ef3bc62524c74ce993cdbd6e5e8097

curl -sfL https://get.k3s.io | sh -s - agent --docker --server https://26.1.1.11:6443
