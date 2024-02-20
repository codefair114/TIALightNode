#!/bin/bash

# Create systemd service file for Celestia Light Node daemon
sudo tee <<EOF >/dev/null /etc/systemd/system/celestia-lightd.service
[Unit]
Description=celestia-lightd light node
After=network-online.target

[Service]
User=$USER
ExecStart=$(which celestia) light start --keyring.accname my_mocha_celes_key --core.ip rpc-mocha.pops.one --p2p.network mocha
Restart=on-failure
RestartSec=3

[Install]
WantedBy=multi-user.target
EOF

# Enable and start Celestia Light Node daemon
sudo systemctl enable celestia-lightd
sudo systemctl start celestia-lightd

