#!/bin/bash
#
# Add https://github.com/rupa/z for directory traversal.
#
# Check whether .bashrc or .zshrc is updated with executing /path/to/z.sh as per
# z installation instructions.

GITHUB_REPO="https://github.com/rupa/z"

git clone $GITHUB_REPO $HOME
