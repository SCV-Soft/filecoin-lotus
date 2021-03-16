#!/bin/bash
mkdir /tmp/lotus-tmp
cd /tmp/lotus-tmp
curl 
tar -zxvf lotus-1.5.2.tar.gz
sudo install -C ./lotus /usr/local/bin/lotus
sudo install -C ./lotus-miner /usr/local/bin/lotus-miner
sudo install -C ./lotus-worker /usr/local/bin/lotus-worker
cd ..
rm -rf lotus-tmp
