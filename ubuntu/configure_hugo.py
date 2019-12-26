#!/bin/bash
#
# Configures the 'hugo' static website generator.
#
# Version: 0.62.0
# Dependencies: 'golang' (see file './configure_golang.sh' for more details)

HUGO_DOWNLOAD_FILENAME="hugo_0.62.0_Linux-64bit.tar.gz"
HUGO_DOWNLOAD_LINK="https://github.com/gohugoio/hugo/releases/download/v0.62.0/$HUGO_DOWNLOAD_FILENAME"

HUGO_DOWNLOAD_DEB="hugo_0.62.0_Linux-64bit.deb"
HUGO_DOWNLOAD_CHECKSUM="79e4594a891bf5b04997b175d549da6f3e3f913cd19c69fef7c289e50c63867c"

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
