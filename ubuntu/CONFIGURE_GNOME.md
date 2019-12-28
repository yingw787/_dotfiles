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

1.  Install `google-chrome-stable`. This is necessary in order to use the Google
    Chrome extension "GNOME Extensions", which are a safer way to install GNOME
    extensions than downloading packages.

    ```bash
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
    sudo apt-get update
    sudo apt-get install google-chrome-stable
    ```

2.  Open application `google-chrome-stable`. Open URI
    https://extensions.gnome.org/extension/307/dash-to-dock/.

3.  Follow the instructions to install "GNOME Shell Extension" to Google Chrome:
    https://chrome.google.com/webstore/detail/gnome-shell-integration

4.  Install the native GNOME Chrome connector:

    ```bash
    sudo apt-get install chrome-gnome-shell
    ```

5.  Open https://extensions.gnome.org/extension/307/dash-to-dock/. Enable the
    extension and press "Yes" when prompted to confirm download.

## Date and Time

### Set time format from 24h to AM/PM

1. In application "Settings", open menu "Date and Time".

2. For option "Time Format", change value from "24-hour" to "AM/PM".

The time should now appear as AM/PM instead of 24-hour time.
