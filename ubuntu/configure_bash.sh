#!/bin/bash
#
# Configure bash shell.
#
# Bash Version: UNVERSIONED

LOG_PREFIX="[https://dotfiles.yingw787.com]"

# Make a copy of the existing .bashrc before overwriting it. #
cp $HOME/.bashrc $HOME/.bashrc.copy

# Overwrite .bashrc #
cp $(pwd)/config/.bashrc $HOME/.bashrc

# Cannot automatically source script because dependencies on this script would
# need to be sourced too. Otherwise, 'source' only exists within the child
# process, which would then be destroyed before leaving parent context.
echo "$LOG_PREFIX NOTE: Current bash context is now outdated. Refresh shell by running 'source ~/.bashrc'."
