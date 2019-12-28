# GNOME configuration

## Appearance

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

## Date and Time

### Set time format from 24h to AM/PM

1. In application "Settings", open menu "Date and Time".

2. For option "Time Format", change value from "24-hour" to "AM/PM".

The time should now appear as AM/PM instead of 24-hour time.
