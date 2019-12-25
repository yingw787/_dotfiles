#!/bin/bash
#
# Configures /etc/hosts file:
# - Copies file '/etc/hosts' to '/etc/hosts.original'
# - Copies file 'config/hosts' to '/etc/hosts'

sudo cp /etc/hosts /etc/hosts.original
sudo cp $(pwd)/config/hosts /etc/hosts
