#!/usr/bin/python3.7
#
# Configures the 'hugo' static website generator.
#
# Hugo Version: 0.62.0
#
# Hugo Dependencies: 'golang' (see file '$(pwd)/configure_golang.sh' for more
# details).
#
# Usage:
# - 'sudo -Hu $(whoami) /usr/bin/python3.7 -B configure_hugo.py'

import os
import subprocess

import utils


LOG_PREFIX = '[https://dotfiles.yingw787.com]'

HOME = os.environ['HOME']
DOWNLOADS = os.path.join(HOME, 'Downloads')

TARBALL_FILENAME = 'hugo_0.62.0_Linux-64bit.tar.gz'
TARBALL_URI = os.path.join(
    'https://github.com/gohugoio/hugo/releases/download/v0.62.0/',
    TARBALL_FILENAME
)

LOCAL_DOWNLOAD = os.path.join(
    DOWNLOADS,
    TARBALL_FILENAME
)
TAR_CHECKSUM='1c3f999320ae30f9b648f6f72305b126be7fd4bab9cb7edf74253c0cbe892c87'

print(f'{LOG_PREFIX} Downloading \'{TARBALL_URI}\' to \'{LOCAL_DOWNLOAD}\'.')

# If absolute file path exists and checksum do not match, download file #
if (
    os.path.exists(LOCAL_DOWNLOAD) and
    TAR_CHECKSUM == utils.generate_sha256sum_of_file(LOCAL_DOWNLOAD)
):
    print(f'{LOG_PREFIX} .deb file downloaded and validated. Skip download.')
else:
    utils.download_file(
        TARBALL_URI,
        LOCAL_DOWNLOAD
    )

# Untar the tarball and place within directory '/usr/local' #
print(f'{LOG_PREFIX} Install tarball.')
utils.install_tarball(
    '/usr/local/bin',
    os.path.join(DOWNLOADS, TARBALL_FILENAME)
)

# Since install location is part of default $PATH, no action needs to be done in
# order to register 'hugo' with shell environment.

# Delete tarball #
os.remove(LOCAL_DOWNLOAD)
