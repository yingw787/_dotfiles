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

## Miscallaneous

### I want to download a playlist from YouTube with highest quality video/audio

Run this command:

```bash
youtube-dl \
    -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' \ # Format title of videos.
    -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' \ # Download as '.mp4', sync and splice best quality audio/video separately as they may be in separate files.
    https://www.youtube.com/playlist?list=${PLAYLIST} # ${PLAYLIST} is playlist ID.
```
