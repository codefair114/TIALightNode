#!/bin/bash

# Clone Celestia Node repository
cd $HOME || exit
sudo yum install git -y
rm -rf celestia-node
git clone https://github.com/celestiaorg/celestia-node.git
cd celestia-node/ || exit

# Checkout specific version tag
git checkout tags/v0.12.4

# Build Celestia Node with jemalloc
make build-jemalloc
make install
make cel-key

# Verify Celestia Node installation
celestia version
