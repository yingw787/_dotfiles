#!/usr/bin/python3.7
#
# Configures the user 'golang' setup.
#
# Golang Version: v1.13.5
#
# To run:
# 'sudo -Hu $(whoami) /usr/bin/python3.7 -B configure_golang.py'

import os

import utils


LOG_PREFIX = '[https://dotfiles.yingw787.com]'

HOME = os.environ['HOME']
DOWNLOADS = os.path.join(HOME, 'Downloads')

TARBALL_FILENAME = 'go1.13.5.linux-amd64.tar.gz'
TARBALL_URI = os.path.join('https://dl.google.com/go', TARBALL_FILENAME)

print(f'{LOG_PREFIX} Download {TARBALL_URI} to {DOWNLOADS}.')

LOCAL_DOWNLOAD = os.path.join(DOWNLOADS, TARBALL_FILENAME)

# Since 'golang' is built as a binary, checksum validation is especially
# important to verify download had succeeded as planned.
#
#pylint: disable=C0301
TARBALL_CHECKSUM = '512103d7ad296467814a6e3f635631bd35574cab3369a97a323c9a585ccaa569'
if (
    os.path.exists(LOCAL_DOWNLOAD) and
    TARBALL_CHECKSUM == utils.generate_sha256sum_of_file(LOCAL_DOWNLOAD)
):
    print(f'{LOG_PREFIX} Tarball downloaded and validated. Skip download.')
else:
    utils.download_file(
        TARBALL_URI,
        os.path.join(DOWNLOADS, TARBALL_FILENAME)
    )

# Untar the tarball and place within directory '/usr/local' #
print(f'{LOG_PREFIX} Install tarball.')
utils.install_tarball(
    '/usr/local',
    os.path.join(DOWNLOADS, TARBALL_FILENAME)
)

# Set up environment variable '$PATH' #
#
# Done as part of copying over file 'dotfiles/ubuntu/config/.bashrc' to location
# '$HOME/.bashrc'. See files './configure_bash.sh' and './setup-ubuntu.sh' for
# more details.
print(
    (
        f'{LOG_PREFIX} Installation complete. Configure $PATH and ' +
        '~/.bashrc to register \'go\' install.'
    )
)
