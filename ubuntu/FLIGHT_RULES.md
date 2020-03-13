# Flight Rules for `dotfiles`: Configuration Quirks

## What are "flight rules"?

A guide for astronauts about what to do when things go wrong.

>  *Flight Rules* are the hard-earned body of knowledge recorded in manuals that
>  list, step-by-step, what to do if X occurs, and why. Essentially, they are
>  extremely detailed, scenario-specific standard operating procedures. [...]

> NASA has been capturing our missteps, disasters and solutions since the early
> 1960s, when Mercury-era ground teams first started gathering "lessons learned"
> into a compendium that now lists thousands of problematic situations, from
> engine failure to busted hatch handles to computer glitches, and their
> solutions.

&mdash; Chris Hadfield, *An Astronaut's Guide to Life*.

## `grub` and booting

### Screen flickers when computer is booting from cold start.

This may be an issue with using the NVIDIA driver vs. the Intel driver to run
graphics. The NVIDIA driver has been seen to flicker, while the Intel driver
does not.

In order to switch drivers, run command:

```bash
sudo prime-select intel
sudo reboot
```

See `python3` script `$(which prime-select)` or `/usr/bin/prime-select` for more
details.

NOTE: CUDA is not available in this mode. Switch to NVIDIA drivers using `sudo
prime-select nvidia` when CUDA is needed.

### BIOS does not boot "Windows Boot Manager" properly.

This may be an issue with `grub` precedence and preferences. Apparently, `grub`
preferences may override BIOS / UEFI settings, such that "Windows Boot Manager"
cannot be selected from the BIOS. Install program `grub-customizer`, and in the
"General Settings" tab, under option "visibility", check "show menu" and "look
for other operating systems". Then, click button "Save" to run `update-grub`.

### `grub` keeps booting into the `grub` menu.

If Ubuntu is the only operating system on the machine, Ubuntu will not boot into
the `grub` menu by default. However, if multiple operating systems exist on the
machine, Ubuntu will boot into the `grub` menu by default. In order to avoid
this, install program `grub-customizer`, and in the "General Settings" tab,
under option visibility, uncheck "show menu" and "look for other operating
systems". Then, click button "Save" to run `update-grub`.

## Drivers

### `nvidia-smi` is not referenceable, even though drivers are installed.

This may be an issue with booting into the OS with the Intel driver vs. the
NVIDIA driver. If the system is running with Intel drivers, the NVIDIA drivers
are not available.

In order to switch drivers, run command:

```bash
sudo prime-select nvidia
sudo reboot
```

Now, `nvidia-smi` should return the console.

NOTE: NVIDIA drivers cause flicker upon boot. Run only when CUDA is necessary
and switch back to `intel` otherwise.

### Microphone does not work, even though device is recognized

According to [the Lenovo ThinkPad P1 Gen 2
specifications](https://psref.lenovo.com/syspool/Sys/PDF/ThinkPad/ThinkPad_P1_2nd_Gen/ThinkPad_P1_2nd_Gen_Spec.PDF),
the laptop has built-in Dolby Audio Premium microphone/speaker combination.
According to [this Stack Overflow answer](https://askubuntu.com/a/984118), Dolby
drivers do not exist for Ubuntu:

> > Windows 10 PC Support Notice:
> >
> > This application is designed specifically for PC Manufacturers and comes
> > pre-installed on licensed devices. It will not function properly on
> > unlicensed devices.

> Dolby Audio is a proprietary technology, and is something featured with
> specific hardware in a system. The only way to enable Dolby features on such
> hardware is with proprietary drivers, which as of yet, do not appear to have
> been released for Linux.

In order to use a microphone on Ubuntu Linux, buy an external microphone.
Otherwise, boot into the separate Windows partition using the Windows Boot
Manager.

## Resource Utilization

### `firefox` is using too much memory

Since I suspend my laptop using Window + L regularly, many processes during a
session are long-lived. This is especially true for Firefox and the many tabs I
keep open on a regular basis. Each tab uses about 10MB and sometimes up to 150MB
of memory.

At times, `firefox` has resulted in 75% of my 16GB of current laptop memory used
up, which has resulted in video buffering, slower site performance, and other
issues.

Firefox Task Manager is available at `about:performance`, where the memory usage
and energy efficiency of various tabs and add-ons are tracked. However, I have
not seen closing certain tabs to result in immediately greater memory
efficiency, and I'm not sure how Firefox's cache behaves underneath the hood and
when memory is released.

Besides rebooting the machine using `sudo reboot`, another method may be to
switch to NVIDIA drivers in order to render graphics more efficiently. This
command `sudo prime-select nvidia` involves a reboot to reload the drivers, but
may cut down on RAM usage. After reboot, the same tabs that may take 75% take
around 38%, though this may be flushing Firefox's cache due to reboot and may
grow over time.

## Miscallaneous

### I want to download a playlist from YouTube with highest quality video/audio

Run this command:

```bash
# For copying and pasting
youtube-dl -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' https://www.youtube.com/playlist?list=${PLAYLIST}


# For edification
youtube-dl \
    -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' \ # Format title of videos.
    -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' \ # Download as '.mp4', sync and splice best quality audio/video separately as they may be in separate files.
    https://www.youtube.com/playlist?list=${PLAYLIST} # ${PLAYLIST} is playlist ID.
```

### Mouse cursor is frozen into a cross shape.

[This Stack Overflow question and answer
post](https://askubuntu.com/a/1031426/1032782) was my situation around 6:45PM ET
on March 13th, 2020. According to the answer, run `killall -KILL import` in
order to fix; this worked for me. For posterity:

>   I have Ubuntu 16.04. The last thing I remember typing into the terminal was
>   `import python` This was done by mistake and I `Ctrl`+`Z` after to end that
>   process. I had `pip uninstall monary` maybe before that.
>
>   But right now, the mouse is stuck as a plus (imagine a plus made of corners
>   of 4 adjacent squares with very slight space in between). It can't click,
>   though the cursor can move anywhere in the screen. I even tried an external
>   mouse but the result is the same.
>
>   I am planning to restart my computer and it might solve the issue. But, I
>   want to know what caused this, and if it happens again what should I do?

__________

>   import is the command to create a screenshot, provided by the ImageMagick
>  tool suite.
>
>   When you run
>
>   ```python
>   import something
>   ```
>
>   as shell command, it will show you a crosshair cursor to select a
>   rectangular area of the screen for capturing, and then save that as file
>   `something`.
>
>   Now you pressed `Ctrl`+`Z`, which is the shortcut for freezing a process and
>   returning to the command prompt in Bash. So `import` is still "running" (not
>   exactly - it's frozen, but still existing) and didn't get a chance to exit
>   or return control over the mouse and screen.
>
>   You have to continue the `import` process by e.g. thawing it and getting it
>   back to the foreground of the shell using the `fg` Bash command. It will
>   probably exit immediately then, otherwise you can terminate it with
>   `Ctrl`+`C`.
>
>   Alternatively, you could also just kill the process by closing the parent
>   terminal window/Bash session or using a command like `killall -KILL import`.
