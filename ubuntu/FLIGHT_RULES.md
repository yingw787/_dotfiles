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

### 1. I want to download a playlist from YouTube

Run this command:

```bash
youtube-dl \
    -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' \ # Format title of videos.
    -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' \ # Download as '.mp4', sync and splice best quality audio/video separately as they may be in separate files.
    https://www.youtube.com/playlist?list=${PLAYLIST} # ${PLAYLIST} is playlist ID.
```
