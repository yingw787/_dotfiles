#!/bin/sh -e
#
# Dotfiles setup from `git@github.com:yingw787/dotfiles.git`.
#
# Commit ID (SHA-1): 'cdd5ad26e61f4eb984ef887cb22d9cf748093611'
#
# This script is intended to be hosted at https://dotfiles.yingw787.com for
# configuring Ying's personal development setup.
#
# Assumptions:
# - Using Ubuntu Desktop 19.10.0 64-bit build
# - Internet is reachable
# - User has `sudo` privileges (e.g. is root)
#
# Usage:
# - cat setup.sh | bash (for basic setup)
# - bash setup.sh

LOG_PREFIX="[https://dotfiles.yingw787.com]"

# Install latest version of `git` for this Ubuntu release #
#
# WARNING: This could be dangerous if `git` breaks backwards compatibility.
# However, no `git` builds are available for specific versions, only release
# candidate and stable PPAs are available. The only way to lock in a specific
# version is to build `git` from source, which I do not think is necessary at
# this time.
echo "$LOG_PREFIX Install / check 'git' distribution."
if ! [ -x "$(command -v git)" ];
then
    add-apt-repository ppa:git-core/ppa
    apt-get install git
else
    echo "$LOG_PREFIX 'git' exists, skipping install."
fi

# `git` clone repository https://github.com/yingw787/dotfiles at HEAD to
# directory on local.
#
# Using HTTPS instead of SSH as SSH keys must be registered with remote host
# before SSH authentication can be passed successfully.
#
# Use `git remote set-url $REMOTE_NAME` in order to change HTTPS to SSH after
# key registration.
repository="https://github.com/yingw787/dotfiles"
# Installing at directory $(pwd) to use context of the current directory,
# instead of $HOME, since that changes with the user context (e.g. whether user
# is run as 'sudo').
destination="$(pwd)/dotfiles"

echo "$LOG_PREFIX Cloning dotfiles repository $REPOSITORY to directory $destination."
if ! [ -d $destination ];
then
    git clone --verbose --progress $repository $destination
else
    echo "$LOG_PREFIX 'dotfiles' directory exists, skipping git clone."
fi

# Log metadata about:
# - `git` version
# - Environment variable $(pwd)
# - Location of `dotfiles` remote repository
# - Location of `dotfiles` local repository
GIT_VERSION=$(git --version)

echo "$LOG_PREFIX 'git' installed."
echo "$LOG_PREFIX 'git' install version: '$GIT_VERSION'"
echo "$LOG_PREFIX env variable '\$(pwd)' is: '$(pwd)'"
echo "$LOG_PREFIX Location of dotfiles remote repository is: '$repository'"
echo "$LOG_PREFIX Location of dotfiles local repository is: '$destination'"

install_script="$destination/ubuntu/setup-ubuntu.sh"

# Manually checkpoint execution to exit or continue.
quit_or_continue() {
    while true; do
        read -p "$LOG_PREFIX Initial setup completed. Continue to '$install_script'? [Y/n] " yn
        case $yn in
            [Yy]* ) echo "$LOG_PREFIX Continuing setup."; break;;
            [Nn]* ) echo "$LOG_PREFIX Exiting."; exit;;
            # If script is pipelined, then this is a good opportunity to halt
            # execution in order to change contexts if necessary.
            * ) echo "$LOG_PREFIX Exiting."; exit;;
        esac
    done
}
quit_or_continue

# Execute Ubuntu install #
bash $install_script
