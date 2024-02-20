#!/bin/bash

# Run setup_env.sh to configure environment
echo "Setting up environment..."
source scripts/setup_env.sh

cd TIALightNode

# Run install_celestia.sh to install Celestia Node
echo "Installing Celestia Node..."
source scripts/install_celestia.sh

# Configure Celestia Node
echo "Configuring Celestia Node..."
source scripts/celestia_config.sh

# Run start_celestia_lightd.sh to start Celestia Light Node daemon
echo "Starting Celestia Light Node daemon..."
source scripts/start_celestia_lightd.sh

echo "Deployment completed successfully!"

