#!/bin/bash
#
# Add https://github.com/rupa/z for directory traversal.
#
# Check whether .bashrc or .zshrc is updated with executing /path/to/z.sh3
#
# Usage:
# - '/bin/bash $HOME/dotfiles/ubuntu/add_z.sh'

LOG_PREFIX="[https://dotfiles.yingw787.com]"

Z="https://github.com/rupa/z"

mkdir -p $HOME/src
pushd $HOME/src
    echo "$LOG_PREFIX cloning '$Z'."
    git clone $Z
popd