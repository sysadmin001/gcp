#!/usr/bin/env bash
set -e 
# https://github.com/thekvs/microproxy
sudo useradd microproxy -s /sbin/nologin
sudo mkdir -p /opt/microproxy
sudo chown microproxy:microproxy /opt/microproxy
sudo cp microproxy /opt/microproxy/
sudo chmod 755 /opt/microproxy/microproxy
sudo cp microproxy.service /lib/systemd/system/microproxy.service
sudo chmod 755 /lib/systemd/system/microproxy.service
# sudo systemctl enable microproxy
# sudo systemctl start microproxy
