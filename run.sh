#!/bin/bash
set -e

sudo docker pull jamesportman/bootmod3
sudo docker run --rm --interactive --tty --network host jamesportman/bootmod3
