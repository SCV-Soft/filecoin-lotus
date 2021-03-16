#!/bin/bash
# apt install packages
sudo apt install mesa-opencl-icd ocl-icd-opencl-dev gcc git bzr jq pkg-config curl clang build-essential hwloc libhwloc-dev wget -y && sudo apt upgrade -y

# rustup + golang
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
wget -c https://golang.org/dl/go1.15.5.linux-amd64.tar.gz -O - | sudo tar -xz -C /usr/local

## Lotus
source "$HOME/.cargo/env"
export PATH=$PATH:/usr/local/go/bin

mkdir /tmp/lotus-tmp
cd /tmp/lotus-tmp
curl https://github.com/SCV-Soft/filecoin-lotus/releases/download/1.5.2/lotus.tar.gz
tar -zxvf lotus.tar.gz
sudo install -C ./lotus /usr/local/bin/lotus
sudo install -C ./lotus-miner /usr/local/bin/lotus-miner
sudo install -C ./lotus-worker /usr/local/bin/lotus-worker
cd ..
rm -rf lotus-tmp
