#!/bin/bash
#
# Configures the user 'golang' setup.
#
# Version: v1.13.5
#
# Usage:
#
# - 'sudo -Hu $(whoami) ./configure_golang.sh'

LOG_PREFIX="[https://dotfiles.yingw787.com]"

DOWNLOADS="$HOME/Downloads"

TARBALL_FILENAME="go1.13.5.linux-amd64.tar.gz"
TARBALL_URI="https://dl.google.com/go/$TARBALL_FILENAME"

TARBALL_CHECKSUM="512103d7ad296467814a6e3f635631bd35574cab3369a97a323c9a585ccaa569"

echo "$LOG_PREFIX Download $TARBALL_URI to $DOWNLOADS."

file_exists=$(test -f $DOWNLOADS/$TARBALL_FILENAME)

if [ -f "$DOWNLOADS/$TARBALL_FILENAME" && $(sha256sum "$DOWNLOADS/$TARBALL_FILENAME") == "$TARBALL_CHECKSUM $DOWNLOADS/$TARBALL_FILENAME"];
then
    echo "$LOG_PREFIX Tarball downloaded and checksum validation passes. Skipping download."
else
    # Download go tarball #
    wget \
        $TARBALL_URI \
        --directory-prefix "$HOME/Downloads"
fi

# Untar the tarball and place within directory '/usr/local' #
echo "$LOG_PREFIX Install tarball."
sudo tar -C /usr/local -xzf "$HOME/Downloads/$TARBALL_FILENAME"

# Set up environment variable '$PATH' #
#
# Done as part of copying over file 'dotfiles/ubuntu/config/.bashrc' to location
# '$HOME/.bashrc'. See files './configure_bash.sh' and './setup-ubuntu.sh' for
# more details.
