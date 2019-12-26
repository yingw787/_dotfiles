#!/bin/bash
#
# Configure bash shell.
#
# Bash Version: UNVERSIONED

# Make a copy of the existing .bashrc before overwriting it. #
cp $HOME/.bashrc $HOME/.bashrc.copy

# Overwrite .bashrc #
cp $(pwd)/config/.bashrc $HOME/.bashrc

# Source .bashrc for current shell to align shell contexts. #
source $(pwd)/config/.bashrc