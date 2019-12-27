#!/bin/bash
#
# Install and configure 'vim'.
#
# Usage:
# - 'sudo -Hu $(whoami) /bin/bash configure_vim.sh'

LOG_PREFIX="[https://dotfiles.yingw787.com]"

echo "$LOG_PREFIX install 'vim' build 'vim/eoan 2:8.1.0875-5ubuntu2 amd64'."
sudo apt-get install -y \
    vim=2:8.1.0875-5ubuntu2 \
    vim-scripts=20180807ubuntu1 \
    vim-doc=2:8.1.0875-5ubuntu2 \
    exuberant-ctags=1:5.9~svn20110310-12