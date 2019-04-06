#!/bin/bash
set -e

sudo docker build --no-cache --tag "bootmod3-agent" .

sudo docker login
sudo docker pull jamesportman/bootmod3

current=$(sudo docker images | grep "jamesportman/bootmod3" | awk '{print $2}' | grep -v latest | sort -n | tail -n 1)
next=$(echo "$current + 1" | bc)

echo "New version will be ${next}."

sudo docker tag bootmod3-agent jamesportman/bootmod3:${next}
sudo docker push jamesportman/bootmod3:${next}
sudo docker tag bootmod3-agent jamesportman/bootmod3:latest
sudo docker push jamesportman/bootmod3:latest

