#!/usr/bin/python3.7
#
# Configures the user 'python3' setup.
#
# This installs Anaconda release '2019.10' as primary user Python.
#
# Usage:
# - 'sudo -Hu $(whoami) /usr/bin/python3.7 -B configure_python.py'

import os


LOG_PREFIX = '[https://dotfiles.yingw787.com]'

HOME = os.environ['HOME']
DOWNLOADS = os.path.join(HOME, 'Downloads')

CONDA_SCRIPT_NAME = 'Anaconda3-2019.10-Linux-x86_64.sh'
CONDA_SCRIPT_URI = os.path.join(
    'https://repo.anaconda.com/archive/',
    CONDA_SCRIPT_NAME
)
