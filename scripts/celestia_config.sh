#!/bin/bash

# Initialize Celestia Light Node with testnet
celestia light init --p2p.network mocha

# Create Celestia Mocha key and wallet
./cel-key add my_mocha_celes_key --keyring-backend test \
	--node.type light --p2p.network mocha
