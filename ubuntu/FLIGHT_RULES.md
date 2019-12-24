# Flight Rules for `git`

## What are "flight rules"?

A guide for

## References

A big thanks to [`k88hudson`'s flight rules on
GitHub](https://github.com/k88hudson/git-flight-rules).

## Rules

### Knowledge Transfer

#### I want to download a playlist from YouTube

Run this command:

```bash
youtube-dl \
    -o '%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' \ # Format title of videos.
    -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' \ # Download as '.mp4', sync and splice best quality audio/video separately as they may be in separate files.
    https://www.youtube.com/playlist?list=${PLAYLIST} # ${PLAYLIST} is playlist ID.
```
