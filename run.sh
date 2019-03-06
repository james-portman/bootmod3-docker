#!/bin/bash
set -e

sudo docker build --tag "bootmod3-agent" .
sudo docker run --tty --network host "bootmod3-agent"

