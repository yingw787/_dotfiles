# VPN Configuration

Set up a virtual private network (VPN) using [NordVPN for
Linux](https://nordvpn.com/download/linux/).

1.  Download the '.deb' file from the website listed above.

2.  Install the package:

    ```bash
    sudo -Hu $(whoami) dpkg -L $HOME/Downloads/nordvpn-release_1.0.0_all.deb
    ```

    This will register the NordVPN PPA.

3.  Update package lists and install `nordvpn`:

    ```bash
    sudo apt-get update
    sudo apt-get install nordvpn
    ```

4.  Open `nordvpn` and login with username and password credentials:

    ```bash
    nordvpn login
    # Email / username
    # Password
    ```

    The login credentials should be persisted across system reboots.

5.  Connect to a server:

    ```bash
    nordvpn connect
    ```

6.  Add the bash command to connect to a server between system reboots by
    registering it with application "Startup Applications".
