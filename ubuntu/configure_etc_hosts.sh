#!/bin/bash
#
# Configures /etc/hosts file:
# - Copies file '/etc/hosts' to '/etc/hosts.copy'
# - Copies file 'config/hosts' to '/etc/hosts'
#
# Usage:
# - 'sudo -Hu $(whoami) /bin/bash configure_etc_hosts.sh'

LOG_PREFIX="[https://dotfiles.yingw787.com]"

sudo cp /etc/hosts /etc/hosts.copy
sudo cp $(pwd)/config/hosts /etc/hosts

echo "$LOG_PREFIX Updated file '/etc/hosts'."
