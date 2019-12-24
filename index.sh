#!/bin/sh -e
#
# This script is intended to be hosted at https://dotfiles.yingw787.com for
# configuring Ying's personal development setup.
#
# Assumptions:
# - Using Ubuntu Desktop 19.10 64-bit build
# - Internet access available

# Install system updates
sudo apt-get update
sudo apt-get full-upgrade

# Install `git` version 2.20.1

# `git` clone repository https://github.com/yingw787/dotfiles
#
# Using HTTPS instead of SSH as SSH keys must be registered with remote host
# before SSH authentication can be passed successfully.