#!/bin/bash
#
# Configure GNOME desktop environment.

# Install papirus-icon-theme (NOT VERSIONED) #
add-apt-repository ppa:papirus/papirus
apt-get update
apt-get install papirus-icon-theme

# Install adapta-gtk-theme (NOT VERSIONED) #
add-apt-repository ppa:tista/adapta
apt-get update
apt-get install adapta-gtk-theme

# These steps must be done manually.
#
# - Install and open `gnome-tweaks`.
# - In window "Appearance", make the following selections:
# - "Themes/Applications" : "Adapta"
# - "Themes/Cursor" : "DMZ-Black"
# - "Themes/Icons" : "Papirus"
# - "Themes/Shell" : "N/A"
# - "Themes/Sound" : "Yaru"

# Install GNOME Dash-to-Dock extension (dependency: GNOME Shell v3.34.1) #
$GNOME_ZIPFILE='12397.shell-extension.zip'
wget \
    "https://extensions.gnome.org/review/download/$GNOME_ZIPFILE" \
    --directory-prefix "$HOME/Downloads"

$DASH_TO_DOCK_DIRNAME='dash-to-dock@micxgx.gmail.com'
$DASH_TO_DOCK_TMP_ABSPATH="$HOME/Downloads/$DASH_TO_DOCK_DIRNAME"

mkdir $DASH_TO_DOCK_TMP_ABSPATH
unzip "$HOME/Downloads/$GNOME_ZIPFILE" -d $DASH_TO_DOCK_TMP_ABSPATH

$GNOME_SHELL_EXTENSIONS="$HOME/.local/share/gnome-shell/extensions"
if ! [ -d $GNOME_SHELL_EXTENSIONS ];
then
    mkdir -p $GNOME_SHELL_EXTENSIONS
fi

mv $DASH_TO_DOCK_TMP_ABSPATH "$GNOME_SHELL_EXTENSIONS/$DASH_TO_DOCK_DIRNAME"
