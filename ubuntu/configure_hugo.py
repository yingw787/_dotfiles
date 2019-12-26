#!/usr/bin/python3.7
#
# Configures the 'hugo' static website generator.
#
# Hugo Version: 0.62.0
#
# Hugo Dependencies: 'golang' (see file '$(pwd)/configure_golang.sh' for more
# details).

import os


TARBALL_FILENAME = 'hugo_0.62.0_Linux-64bit.tar.gz'
TARBALL_URI = os.path.join('https://github.com/gohugo.io/releases/download/v0.62.0', TARBALL_FILENAME)

DEB_FILENAME = 'hugo_0.62.0_Linux-64bit.deb'
DEB_CHECKSUM="79e4594a891bf5b04997b175d549da6f3e3f913cd19c69fef7c289e50c63867c"

# If absolute file path exists and checksum do not match #
if [ $(sha256sum "$HOME/Downloads/$HUGO_DOWNLOAD_DEB") != "$HUGO_DOWNLOAD_CHECKSUM $HOME/Downloads/$HUGO_DOWNLOAD_DEB" ];
then
    # Download and untar hugo tarball #
    wget \
        $HUGO_DOWNLOAD_LINK \
        --directory-prefix "$HOME/Downloads"
    tar -C "$HOME/Downloads" -xzf "$HOME/Downloads/$HUGO_DOWNLOAD_FILENAME"
else
    # Skip download step #
fi

# Set up environment variable '$PATH' #
#
# Since install location is part of default $PATH, no action needs to be done.

# Delete tarball and untar directory #
