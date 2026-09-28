#!/usr/bin/env bash
# Re-create the graded footage from the originals (run from assets/).
set -euo pipefail
SEP="colorchannelmixer=rr=.393:rg=.769:rb=.189:gr=.349:gg=.686:gb=.168:br=.272:bg=.534:bb=.131"
ffmpeg -y -i source/anjali.mp4 -filter_complex "[0:v]format=gbrp,split[a][b];[a]$SEP[s];[s][b]blend=all_mode=normal:all_opacity=0.88,eq=contrast=0.95:brightness=-0.02:saturation=0.9,curves=r='0/0.03 1/0.95':g='0/0.02 1/0.87':b='0/0.01 1/0.78',format=yuv420p[v]" -map "[v]" -an -c:v libx264 -crf 14 -preset slow anjali-sepia.mp4
ffmpeg -y -i source/duo-message.mp4 -filter_complex "[0:v]format=gbrp,split[a][b];[a]$SEP[s];[s][b]blend=all_mode=normal:all_opacity=0.55,eq=saturation=0.9,format=yuv420p[v]" -map "[v]" -map 0:a -c:v libx264 -crf 14 -preset slow -c:a copy duo-message-warm.mp4
