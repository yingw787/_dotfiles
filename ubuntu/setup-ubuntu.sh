#!/usr/bin/env bash

# Initial setup script.

# Assumptions:
#
# Using operating system Ubuntu 19.10.0 LTS (Eoan Ermine)
# 'git' installed from ppa:git-core/ppa

# Optional arguments:
#
# [--no-gui]: Install non-GUI tools only (TODO)


WHOAMI=$(whoami)

sudo -Hu $WHOAMI /usr/bin/python3.7 $(pwd)/configure_golang.py
sudo -Hu $WHOAMI /usr/bin/python3.7 $(pwd)/configure_hugo.py