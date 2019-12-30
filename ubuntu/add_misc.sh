#!/bin/bash
#
# Add miscellaneous programs that do not require special configuration.
#
# Usage:
# - 'sudo -Hu $(whoami) /bin/bash add_misc.sh'

LOG_PREFIX="[https://dotfiles.yingw787.com]"

# Install 'tree' build 'tree/eoan 1.8.0-1 amd64' #
echo "$LOG_PREFIX install 'tree' build 'tree/eoan 1.8.0-1 amd64'."
sudo apt-get install -y tree=1.8.0-1

# Install 'xclip' build 'xclip/eoan,nwo 0.13-1 amd64' #
echo "$LOG_PREFIX install 'xclip' build 'xclip/eoan,nwo 0.13-1 amd64'."
sudo apt-get install -y xclip=0.13-1

# Install 'ncdu' build 'ncdu/eoan 1.14.1-1 amd64' #
echo "$LOG_PREFIX install 'ncdu' build 'ncdu/eoan 1.14.1-1 amd64'."
sudo apt-get install -y ncdu=1.14.1-1

# Install 'net-tools' including 'ifconfig' #
echo "$LOG_PREFIX install 'net-tools'."
sudo apt-get install -y net-tools
