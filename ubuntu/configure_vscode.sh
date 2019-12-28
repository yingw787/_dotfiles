#!/bin/bash
#
# Configure Microsoft Visual Studio Code.
#
# NOTE: VS Code Extensions are not available in any JSON form. The full list of
# extensions includes:
# - 'rewrap': Hard wrap text using newline insertion
# - 'todotree': Visualize TODO statements in sidebar
# - 'python': VS Code Python extension
# - 'haskell': Haskell syntax highlighting
# - 'markdownlint': Markdown linting and style checking
# - 'gitlens': View 'git' histories
#
# Usage:
# - 'sudo -Hu $(whoami) /bin/bash configure_vscode.sh'

LOG_PREFIX="[https://dotfiles.yingw787.com]"

# Using v1.41.1 (November 2019) #
DEB_NAME="code.v1.41.1.deb"
DEB_URI="https://update.code.visualstudio.com/1.41.1/linux-deb-x64/stable"
DOWNLOADS="$HOME/Downloads"

echo "$LOG_PREFIX Downloading 'code' from '$DEB_URI' to '$DOWNLOADS' as '$DEB_NAME'."
# NOTE: For command 'wget', options -P/--directory-prefix and
# -O/--output-document are mutually exclusive. If a absolute path is desired,
# use '-O' and specify the absolute file path.
wget -O "$DOWNLOADS/$DEB_NAME" $DEB_URI

echo "$LOG_PREFIX Installing '$DOWNLOADS/$DEB_NAME' using 'dpkg'."
sudo dpkg -i "$DOWNLOADS/$DEB_NAME"

echo "$LOG_PREFIX Installing 'settings.json' for user preferences."
mkdir -p $HOME/.config/Code/Users
cp $(pwd)/config/vscode_settings.json $HOME/.config/Code/Users/settings.json

echo "$LOG_PREFIX 'code' updated. Run 'Developer: Reload Window' or Ctrl + R to reload settings."
echo "$LOG_PREFIX see '$(pwd)/configure_vscode.sh' to see list of extensions."
