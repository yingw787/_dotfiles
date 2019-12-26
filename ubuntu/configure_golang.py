#!/usr/bin/python3.7
#
# Configures the user 'golang' setup.
#
# Version: v1.13.5
#
# Usage:
#
# - 'sudo -Hu $(whoami) ./configure_golang.py'

# Using system 'python3.7' because a general-purpose language has more robust /
# defined behavior than what 'bash' can provide, and Ubuntu 19.10 ships with
# 'python3.7'.

import os
import requests

LOG_PREFIX = '[https://dotfiles.yingw787.com]'

HOME = os.environ['HOME']
DOWNLOADS = os.path.join(HOME, 'Downloads')

TARBALL_FILENAME = 'go1.13.5.linux-amd64.tar.gz'
TARBALL_URI = os.path.join('https://dl.google.com/go', TARBALL_FILENAME)
TARBALL_CHECKSUM = '512103d7ad296467814a6e3f635631bd35574cab3369a97a323c9a585ccaa569'

print(f'{LOG_PREFIX} Download {TARBALL_URI} to {DOWNLOADS}.')

LOCAL_DOWNLOAD = os.path.join(DOWNLOADS, TARBALL_FILENAME)

if (
    os.path.exists(LOCAL_DOWNLOAD) and
    TARBALL_CHECKSUM == generate_checksum_of_file(LOCAL_DOWNLOAD)
):
    print(f'{LOG_PREFIX} Tarball downloaded and validated. Skip download.')
else:
    download_file(TARBALL_URI, DOWNLOADS)

# # Untar the tarball and place within directory '/usr/local' #
# echo "$LOG_PREFIX Install tarball."
# sudo tar -C /usr/local -xzf "$HOME/Downloads/$TARBALL_FILENAME"

# # Set up environment variable '$PATH' #
# #
# # Done as part of copying over file 'dotfiles/ubuntu/config/.bashrc' to location
# # '$HOME/.bashrc'. See files './configure_bash.sh' and './setup-ubuntu.sh' for
# # more details.
