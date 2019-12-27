#!/bin/bash
#
# Configure Microsoft Visual Studio Code.
#
# Usage:
# - 'sudo -Hu $(whoami) /bin/bash configure_vscode.sh'

LOG_PREFIX="[https://dotfiles.yingw787.com]"

# Using v1.41.1 (November 2019) #
DEB_NAME="code.v1.41.1.deb"
DEB_URI="https://update.code.visualstudio.com/1.41.1/linux-deb-x64/stable"
DOWNLOADS="$HOME/Downloads"

echo "$LOG_PREFIX Downloading 'code' from '$DEB_URI' to '$DOWNLOADS' as $DEB_NAME'."
wget \
    $DEB_URI
    --directory-prefix $DOWNLOADS
    --output-document $DEB_NAME

echo "$LOG_PREFIX Installing '$DOWNLOADS/$DEB_NAME' using 'dpkg'."
sudo dpkg -i "$DOWNLOADS/$DEB_NAME"

echo "$LOG_PREFIX Installing 'settings.json' for user preferences."
mkdir -p $HOME/.config/Code/Users
cp $(pwd)/config/vscode_settings.json $HOME/.config/Code/Users/settings.json

echo "$LOG_PREFIX 'code' updated. Run 'Developer: Reload Window' or Ctrl + R to reload settings."
