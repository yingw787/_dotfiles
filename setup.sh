#!/bin/sh -e
#
# Dotfiles setup from `git@github.com:yingw787/dotfiles.git`.
#
# Commit ID (SHA-1): '8ddb96af1e08cbd4a9a1f14ad0cba0f8fda19d9a'
#
# This script is intended to be hosted at https://dotfiles.yingw787.com for
# configuring Ying's personal development setup.
#
# Assumptions:
# - Using Ubuntu Desktop 19.10 64-bit build
# - Internet is reachable

# Install system updates #
sudo apt-get update
sudo apt-get full-upgrade

# Install latest version of `git` for this Ubuntu release #
#
# WARNING: This could be dangerous if `git` breaks backwards compatibility.
# However, no `git` builds are available for specific versions, only release
# candidate and stable PPAs are available. The only way to lock in a specific
# version is to build `git` from source, which I do not think is necessary at
# this time.
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get install git

# `git` clone repository https://github.com/yingw787/dotfiles
#
# Using HTTPS instead of SSH as SSH keys must be registered with remote host
# before SSH authentication can be passed successfully.
#
# Use `git remote set-url $REMOTE_NAME` in order to change HTTPS to SSH.
git clone https://github.com/yingw787/dotfiles $HOME/dotfiles

# Execute Ubuntu install #
bash $HOME/dotfiles/ubuntu/setup-ubuntu.sh