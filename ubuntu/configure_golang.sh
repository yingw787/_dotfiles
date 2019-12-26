#!/bin/bash
#
# Configures the user 'golang' setup.
#
# Version: v1.13.5

GOLANG_DOWNLOAD_FILENAME="go1.13.5.linux-amd64.tar.gz"
GOLANG_DOWNLOAD_LINK="https://dl.google.com/go/$GOLANG_DOWNLOAD_FILENAME"

wget \
    $GOLANG_DOWNLOAD_LINK \
    --directory-prefix "$HOME/Downloads"

tar -C /usr/local -xzf "$HOME/Downloads/$GOLANG_DOWNLOAD_FILENAME"
