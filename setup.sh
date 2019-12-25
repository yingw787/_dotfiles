#!/bin/sh -e
#
# Dotfiles setup from `git@github.com:yingw787/dotfiles.git`.
#
# Commit ID (SHA-1): 'bb44d8fb5269422a7a6458bb99c5ee8cca6728dd'
#
# This script is intended to be hosted at https://dotfiles.yingw787.com for
# configuring Ying's personal development setup.
#
# Assumptions:
# - Using Ubuntu Desktop 19.10 64-bit build
# - Internet is reachable
# - User has `sudo` privileges (e.g. is root)

LOG_PREFIX="[https://dotfiles.yingw787.com]"

# Install latest version of `git` for this Ubuntu release #
#
# WARNING: This could be dangerous if `git` breaks backwards compatibility.
# However, no `git` builds are available for specific versions, only release
# candidate and stable PPAs are available. The only way to lock in a specific
# version is to build `git` from source, which I do not think is necessary at
# this time.
echo "$LOG_PREFIX Installing latest stable `git` for distribution."
add-apt-repository ppa:git-core/ppa
apt-get install git

# `git` clone repository https://github.com/yingw787/dotfiles at HEAD to
# directory on local.
#
# Using HTTPS instead of SSH as SSH keys must be registered with remote host
# before SSH authentication can be passed successfully.
#
# Use `git remote set-url $REMOTE_NAME` in order to change HTTPS to SSH after
# key registration.
repository="https://github.com/yingw787/dotfiles"
destination="$HOME/dotfiles"

echo "$LOG_PREFIX Cloning dotfiles repository $REPOSITORY to directory $destination."
git clone \
    --verbose \
    --progress \
    $repository $destination

# Execute Ubuntu install #
install_script="$destination/ubuntu/setup-ubuntu.sh"
echo "$LOG_PREFIX Executing install script '$install_script'."
bash $install_script
