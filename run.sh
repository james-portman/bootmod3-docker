#!/bin/bash
set -e

sudo docker build --tag "bootmod3-agent" .
sudo docker run -v `pwd`/files:/files -it --network host "bootmod3-agent"
