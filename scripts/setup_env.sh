#!/bin/bash

# Update system packages
sudo yum update -y

# Install necessary packages
sudo yum install curl tar wget aria2 clang pkg-config openssl-devel jq make ncdu git -y

# Download and install Go
ver="1.21.1"
cd $HOME || exit
wget "https://golang.org/dl/go$ver.linux-amd64.tar.gz"
sudo rm -rf /usr/local/go
sudo tar -C /usr/local -xzf "go$ver.linux-amd64.tar.gz"
rm "go$ver.linux-amd64.tar.gz"

# Add Go binary path to environment variables
echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin' >> $HOME/.bash_profile
source $HOME/.bash_profile

# Verify Go installation
go version
