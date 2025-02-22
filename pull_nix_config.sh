#!/bin/bash

# This file is automatically called by a systemd service routine (systemd.path)
# that is being activated every time that a change is made to the specified file.

# File To be Pulled
FILE = /etc/nixos/configuration.nix

# Pull Nix Config File
cp $FILE .

# Push to GitHub
git add *
git commit -m "Configuration Updated"
git push
