#!/usr/bin/python3.7
#
# Configures the user 'python3' setup.
#
# Python Version: 3.7.x
#
# This installs Anaconda release '2019.10' as primary user Python.
#
# Usage:
# - 'sudo -Hu $(whoami) /usr/bin/python3.7 -B configure_python.py'

import os
import subprocess

import utils


LOG_PREFIX = '[https://dotfiles.yingw787.com]'

HOME = os.environ['HOME']
DOWNLOADS = os.path.join(HOME, 'Downloads')

CONDA_SCRIPT_NAME = 'Anaconda3-2019.10-Linux-x86_64.sh'
CONDA_SCRIPT_URI = os.path.join(
    'https://repo.anaconda.com/archive/',
    CONDA_SCRIPT_NAME
)

LOCAL_DOWNLOAD = os.path.join(
    DOWNLOADS,
    CONDA_SCRIPT_NAME
)
SCRIPT_CHECKSUM = '46d762284d252e51cd58a8ca6c8adc9da2eadc82c342927b2f66ed011d1d8b53'

print(f'{LOG_PREFIX} Downloading \'{CONDA_SCRIPT_URI}\' to \'{LOCAL_DOWNLOAD}\'.')

# If absolute file path exists and checksum matches, do not re-download file. #
if (
    os.path.exists(LOCAL_DOWNLOAD) and
    SCRIPT_CHECKSUM == utils.generate_sha256sum_of_file(LOCAL_DOWNLOAD)
):
    print(f'{LOG_PREFIX} conda script downloaded and valid. Skip download.')
else:
    utils.download_file(
        CONDA_SCRIPT_URI,
        LOCAL_DOWNLOAD
    )

# Run the script using '/bin/bash'. #
print(f'{LOG_PREFIX} Run bash script.')
bash_command = [
    'bash',
    LOCAL_DOWNLOAD
]
subprocess.call(' '.join(bash_command), shell=True)
