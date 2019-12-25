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

## VirtualBox VM Setup Steps

1.  Open program "Oracle VM VirtualBox Manager".

    There should not be any virtual machines present.

2.  In the menu bar, click button "New" to create a new virtual machine.

3.  In window "Name and operating system", configure setting "Name" to value
    "Ubuntu-19.10-desktop-amd64-base".

    Setting "Machine Folder" should be value "$HOME/VirtualBox VMs", setting
    "Type" should be "Linux", and setting "Version" should be value "Ubuntu
    (64-bit)". These settings are left alone.

    Click button "Next >".

4.  In window "Memory size", set memory size to value "8000 MB".

    Setting the recommended memory size of value "1024 MB" sometimes crashes the
    Ubuntu installation phase.

    Click button "Next >".

5.  In window "Hard disk", leave default option "Create a virtual hard disk
    now".

    Click button "Create".

6.  In window "Hard disk file type", leave default option "VDI (VirtualBox Disk
    Image)".

    Click button "Next >".

7.  In window "Storage on physical hard disk", leave default option "Dynamically
    allocated".

    Click button "Next >".

8.  In window "File location and size", leave default option for virtual hard
    disk file file path. This should be:

    ```bash
    VIRTUALBOX_VM_NAME="Ubuntu-19.10-desktop-amd64-base"
    echo $HOME/"VirtualBox VMs"/$VIRTUALBOX_VM_NAME/$VIRTUALBOX_VM_NAME
    ```

    Leave default option for hard drive size to be "10.00 GB".

    Click button "Create".

## Ubuntu 19.10 Install Steps

1.  Select VM "Ubuntu-19.10-desktop-amd64-base".

    Click button "Start".

2.  In window "Select start-up disk", select the Ubuntu 19.10 .iso file in your
    filesystem. This path should be:

    ```bash
    $HOME/Downloads/ubuntu-19.10-desktop-amd64.iso
    ```

    Click button "Start".

3.  In window "Welcome", click on button "Install Ubuntu".

4.  In window "Keyboard layout", select language "English (US)" and keyboard
    layout "English (US) - English (Dvorak)".

5.  In window "Updates and other software", select "Minimal installation", and
    select "Download updates while installing Ubuntu" and "Install third-party
    software for graphics and Wi-Fi hardware and additional media formats".

    Click button "Continue".

6.  In window "Installation type", select "Erase disk and install Ubuntu".

    Do NOT select "Encrypt the new Ubuntu installation for security". In
    previous usage of Ubuntu, this resulted in halving the amount of available
    disk space, since the encrypted files at rest were not compressed. This is
    also an option that cannot be changed after the OS is installed.

    Do not select "Use LVM with the new Ubuntu installation".

    Click button "Install Now".

7.  In window "Write the changes to disks?", click button "Continue".

8.  In window "Where are you?", leave default option "New York" (if based in the
    Eastern Time Zone), or other timezone if applicable to daily use.

9.  In window "Who are you?", set value "Your Name" to `$YOUR_NAME`, username to
    `$USERNAME`, and password to `$PASSWORD`. Value "Your computer's name"
    should be left as default after all other fields are generated. Set option
    for login to "Require my password to log in".

    Click button "Continue".
