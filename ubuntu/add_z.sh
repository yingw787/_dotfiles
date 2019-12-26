#!/bin/bash
#
# Add https://github.com/rupa/z for directory traversal.

GITHUB_REPO="https://github.com/rupa/z"

git clone $GITHUB_REPO $HOME

# [TODO]: Check whether I added /path/to/z.sh to .bashrc or .zshrc. If not, add
# it within this script.
