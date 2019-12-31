# `tmux` configuration

`tmux` is a terminal multiplexer, which can handle splitting existing windows
and creating new windows.

## Install `tmux`

Run command:

```bash
sudo apt-get install tmux
```

## Check the version of `tmux`

None of the usual version flags work with `tmux`:

```bash
tmux --version
tmux -version
tmux version
```

In order to check the version of `tmux`, run command:

```bash
tmux -V
```

This is currently version `tmux 2.9a` from default package archive.

## Configure `tmux` using file

Since window management can get difficult, you can create a file to store
specific configurations. This file is named `.tmux.conf`. The default `dotfiles`
tmux config is available as `ubuntu/config/.tmux.conf`.

Save it in your $HOME directory in order to set user-specific tmux configuration
for the machine instance:

```bash
cp $(pwd)/config/.tmux.conf $HOME/.tmux.conf
```

## Check whether `tmux` server is still running

Run command:

```bash
tmux ls
```

This will give live windows running for `tmux` server.

## Load the `tmux` configuration file

Kill the existing `tmux` server in order to reboot the `tmux` server from
default:

```bash
tmux kill-server
```

Alternatively, within an existing `tmux` session, press the prefix key
combination (by default Ctrl + B), then bring up the command prompt by pressing
`:`, and type `source-file ~/.tmux.conf`.

## Save current `tmux` session

Since `tmux` configurations are created at runtime, they do not persist across
system restarts by default. This results in broken workflows, since the windows
must by default be configured manually after every system restart.

To bypass this problem:

1.  If it doesn't exist already, make nested directory `~/.tmux/plugins`:

    ```bash
    mkdir -p $HOME/.tmux/plugins
    ```

2.  Install the [**`tpm`**](https://github.com/tmux-plugins/tpm), the `tmux`
    plugin manager:

    ```bash
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    ```

3.  Copy over `ubuntu/config/.tmux.config` to your `$HOME` directory.

    ```bash
    cp $(pwd)/config/.tmux.config $HOME/.tmux.config
    ```

4.  Kill the `tmux` server or source the `~/.tmux.config` file within the `tmux`
    process in order to get the latest `.tmux` config.

    This should get the `tmux` session to a working state with `tmux-resurrect`.

5.  To save the current `tmux` session, press prefix (Ctrl + B) and (Ctrl + s).

6.  To restore the previous `tmux` session, press prefix (Ctrl + B) and (Ctrl +
    r).
