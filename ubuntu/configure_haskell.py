#!/usr/bin/python3.7
#
# Configures the 'haskell' toolchain using 'stack'.
#
# Stack Version: UNVERSIONED
#
# Usage:
# - 'sudo -Hu $(whoami) /usr/bin/python3.7 -B $(pwd)/configure_haskell.py'

import os
import subprocess

import utils


LOG_PREFIX = '[https://dotfiles.yingw787.com]'

HOME = os.environ['HOME']
DOWNLOADS = os.path.join(HOME, 'Downloads')

SCRIPT_FILENAME = 'get.haskellstack.sh'
SCRIPT_URI = 'https://get.haskellstack.org'

LOCAL_DOWNLOAD = os.path.join(
    DOWNLOADS,
    SCRIPT_FILENAME
)
SCRIPT_CHECKSUM = 'f3ad06b960167de0331dd96ff558525704170088a441d29785d0f02061870a5a'

print(f'{LOG_PREFIX} Downloading \'{SCRIPT_URI}\' to \'{LOCAL_DOWNLOAD}\'.')

# If absolute file path exists and checksum matches, do not re-download file. #
if (
    os.path.exists(LOCAL_DOWNLOAD) and
    SCRIPT_CHECKSUM == utils.generate_sha256sum_of_file(LOCAL_DOWNLOAD)
):
    print(f'{LOG_PREFIX} script downloaded and verified. Skip download.')
else:
    utils.download_file(
        SCRIPT_URI,
        LOCAL_DOWNLOAD
    )

# Run bash script. #
print(f'{LOG_PREFIX} Run bash script.')
bash_command = [
    'bash',
    LOCAL_DOWNLOAD
]
subprocess.call(' '.join(bash_command), shell=True)
