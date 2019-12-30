# Plex Media Server Automation Setup

This guide walks through steps to set up plex media server automation, including
`plexmediaserver`, torrent / usenet, `radarr` / `sonarr`, and `jackett`.

## Set up Plex Media Server

1.  Set up the PPA and update package archives:

    ```bash
    echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
    curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -
    sudo apt-get update
    ```

2.  Install `plexmediaserver`:

    ```bash
    sudo apt-get install plexmediaserver
    ```

    Plex Media Server should now be installed. Open application "Show Applications" in order to select application "Plex Media Server".

3.  Run through various authentication steps in order to configure the server
    for the first time.

4.  Download the [Plex Media Server Linux
    distribution](https://www.plex.tv/media-server-downloads/) and the related
    .deb file.

5.  Install the .deb file for a full native experience:

    ```bash
    sudo dpkg -i $HOME/Downloads/plexmediaserver_1.18.3.2156-349e9837e_amd64.deb
    ```
