# GNOME configuration

## Theming

### Install `papirus-icon-theme` and `adapta-gtk-theme`

1. In application "Terminal", install `papirus-icon-theme` and `adapta-gtk-theme`:

```bash
sudo add-apt-repository ppa:papirus/papirus
sudo add-apt-repository ppa:tista/adapta
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

## Date and Time

### Set time format from 24h to AM/PM

1. In application "Settings", open menu "Date and Time".

2. For option "Time Format", change value from "24-hour" to "AM/PM".
