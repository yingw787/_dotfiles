#!/bin/bash
#
# Configures the user 'golang' setup.
#
# Version: v1.13.5

GOLANG_DOWNLOAD_FILENAME="go1.13.5.linux-amd64.tar.gz"
GOLANG_DOWNLOAD_LINK="https://dl.google.com/go/$GOLANG_DOWNLOAD_FILENAME"

# Download go tarball #
wget \
    $GOLANG_DOWNLOAD_LINK \
    --directory-prefix "$HOME/Downloads"

# Untar the tarball and place within directory '/usr/local' #
sudo tar -C /usr/local -xzf "$HOME/Downloads/$GOLANG_DOWNLOAD_FILENAME"

# Set up environment variable '$PATH' #
#
# Done as part of copying over file 'dotfiles/ubuntu/config/.bashrc' to location
# '$HOME/.bashrc'. See files './configure_bash.sh' and './setup-ubuntu.sh' for
# more details.
