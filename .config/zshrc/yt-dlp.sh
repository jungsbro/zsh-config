#!/bin/bash

# ==============================================================================
# yt-dlp
alias yt='mpv --hwdec=vaapi --ytdl-format="bestvideo[height<=1080][vcodec^=avc1]+bestaudio/best" "$(xclip -o)"'
# ==============================================================================

