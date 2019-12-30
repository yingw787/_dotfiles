# Time Tracker Configuration

On macOS, I use [Timing](https://timing.app) in order to keep track of time
tracking. What I really like about this tool is:

- Ability to automatically track which applications and resources I visit and
  keep active in my windows
- An automatically calculated productivity score throughout the day
- A GUI for analytics and dashboards

Timing is not available on Linux. RescueTime appears to be a close substitute.

In order to install RescueTime:

-   Download the Linux 64-bit .deb file from the [RescueTime Linux download
    website](https://www.rescuetime.com/download_linux), and install the
    RescueTime Firefox extension.

-   Install dependencies using `apt` and install the .deb file using `dpkg`:

    ```bash
    sudo apt-get install -y \
        libqt5gui5 \
        libqt5core5a \
        libqt5dbus5 \
        libqt5network5 \
        libxcb-xinerama0 \
        libxcb-xinput0 \
        qtbase-abi-5-12-4 \
        libqt5svg5 \
        qt5-gtk-platformtheme \
        libdouble-conversion3 \
        libpcre2-16-0 \
        qttranslations5-l10n \
        libqt5widgets

    sudo apt-get install libqt5sql5

    sudo apt-get install sqlite3

    sudo dpkg -i $HOME/Downloads/rescuetime_current_amd64.deb
    ```

    Application "RescueTime" as command line `rescuetime` should now be
    available. When activated, it should have a toggle in the top-right menu
    bar.

-   Add `rescuetime` to application "Startup Applications".
