#!/bin/bash

# stop on first error
set -e

sudo cp ./dream-sniffer-stopper.service /etc/systemd/system/
sudo cp ./dream-sniffer-stopper.timer /etc/systemd/system/

sudo cp ./dream-sniffer-starter.service /etc/systemd/system/
sudo cp ./dream-sniffer-starter.timer /etc/systemd/system/

sudo systemctl daemon-reload

sudo systemctl enable dream-sniffer-stopper.timer
sudo systemctl enable dream-sniffer-starter.timer

sudo systemctl start dream-sniffer-stopper.timer
sudo systemctl start dream-sniffer-starter.timer
