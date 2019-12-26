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
