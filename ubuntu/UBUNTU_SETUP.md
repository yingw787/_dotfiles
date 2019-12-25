# Deterministic Setup Instructions for Ubuntu

These are deterministic setup instructions for core Ubuntu install. This
outlines the core test environment for these dotfiles, and informs setting
preferences for the final bare metal install.

Non-deterministic instructions (e.g. bare metal install where actual firmware is
different) should be stored as part of the [Ubuntu flight
rules](FLIGHT_RULES.md).

## Assumptions

- This is using a sample Ubuntu 19.10 bare metal installation as the test
  platform.

- The machine instance is loaded using VirtualBox 6.1.0 for Ubuntu 19.10,
  available as a .deb file
  [here](https://download.virtualbox.org/virtualbox/6.1.0/virtualbox-6.1_6.1.0-135406~Ubuntu~eoan_amd64.deb).

- The operating system used is Ubuntu 19.10 (Oan Ermine), for desktop, built for
  64-bit Linux (amd64), available
  [here](releases.ubuntu.com/19.10/ubuntu-19.10-desktop-amd64.iso).
