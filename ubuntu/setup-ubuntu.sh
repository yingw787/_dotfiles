#!/usr/bin/env bash

# Initial setup script.

# Operating System: Ubuntu 18.04.2 LTS

# Initial startup before executing startup scripts:

# 1. Run `sudo apt update && sudo apt list --upgradable && sudo apt upgrade`
#    to upgrade system from base install.

# 2. Run `sudo add-apt-repository ppa:git-core/ppa && sudo apt update && apt install git`
#    to install latest stable version of `git`.

# 3. Run `ssh-keygen` to create an SSH public/private keypair, then upload the
#    public key to GitHub.

# 4. Run `git config --global user.email "$YOUR_EMAIL_HERE" && git config --global user.name "$YOUR_NAME_HERE"
#    to configure a global `git` name and email for git commits.

# 5. Run `cd ~ && git clone git@github.com:yingw787/dotfiles.git` to clone the
#    `dotfiles` repository, and follow the README instructions to get started.


# Get a copy of Microsoft Visual Studio Code.
sudo apt-get update
sudo apt-get install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get update
sudo apt-get install code
