# GNOME configuration

## Appearance

### Install `papirus-icon-theme` and `adapta-gtk-theme`

1. In application "Terminal", install `papirus-icon-theme` and `adapta-gtk-theme`:

```bash
sudo add-apt-repository ppa:papirus/papirus
# The Adapta PPA may be folded into the general package archive for Ubuntu
# 19.10; the PPA does not have sources for this release.
#
# sudo add-apt-repository ppa:tista/adapta
sudo apt-get update
sudo apt-get install -y papirus-icon-theme adapta-gtk-theme
```

2. Install `gnome-tweaks`:

```bash
sudo apt-get install gnome-tweaks
```

3. Open `gnome-tweaks`. In window "Appearance", make the following selections:

- "Themes/Applications" : "Adapta"
- "Themes/Cursor" : "DMZ-Black"
- "Themes/Icons" : "Papirus"
- "Themes/Shell" : "N/A"
- "Themes/Sound" : "Yaru"

The theme should be configured properly.

### Configure Night Shift

1. In application "Settings", choose menu "Displays".

2. In the header of the application window, there should be menu "Night Light"
   in addition to menu "Displays". Open it.

3. In menu "Night Light", set the following options:

- "Night Light" : "Enabled"
- "Schedule" : "Manual Schedule"
- "Times" : "2:00 AM - 1:59 AM"
- "Color Temperature" : "50%" (middle)

Night shift should be configured and visible.

### Move menu bar from left edge to middle of bottom screen

By default, the menu bar exists at the left edge of the screen. macOS has its
menu bar in the middle of the screen, configurable to hide when not needed.

1.  Clone the repository and run `make install`:

    ```bash
    cd $HOME/src
    pushd $HOME/src
        git clone https://github.com/micheleg/dash-to-dock.git
        cd dash-to-dock
        make && make install
    popd
    ```

    If you get the error `make: msgfmt: Command not found`, install `gettext`:

    ```bash
    sudo apt-get install gettext
    ```

2.  Reboot GNOME shell using 'Alt + F2; r + Enter', or reboot the entire
    computer:

    ```bash
    sudo reboot
    ```

"GNOME Dash-to-Dock" should be installed properly.

3.  In application "Settings", in menu "Dock", select the following options:

    - "Auto-hide the Dock" : "enable"
    - "Icon Size" : "64" (or largest)
    - "Position on screen" : "Bottom"

The Dock should now appear at the bottom, and hide automatically when not used.

### Use default BIOS screen with spinner

This uses the default screen (e.g. the Lenovo logo) with an attached spinner
instead of having the purple Ubuntu screen by default.

Install `plymouth-theme-spinner` to get this effect:

```bash
sudo apt-get install plymouth-theme-spinner
```

The theme should now be installed. Reboot the computer in order to see the
effects.

## Date and Time

### Set time format from 24h to AM/PM

1. In application "Settings", open menu "Date and Time".

2. For option "Time Format", change value from "24-hour" to "AM/PM".

The time should now appear as AM/PM instead of 24-hour time.
