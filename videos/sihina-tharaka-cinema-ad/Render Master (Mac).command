#!/bin/bash
# Double-click on a Mac to render the Sihina Tharaka cinema master
# (1920x1080, 24 fps, H.264 ~40 Mbps). Installs what's missing first.
set -euo pipefail
cd "$(dirname "$0")"

OUT="renders/sihina-tharaka-cinema-ad-1080p24-master-40M.mp4"
echo "== Sihina Tharaka: cinema master render =="
echo

# Homebrew (installs Node and FFmpeg). Its installer asks for your Mac password once.
if ! command -v brew >/dev/null 2>&1; then
  for b in /opt/homebrew/bin/brew /usr/local/bin/brew; do
    [ -x "$b" ] && eval "$("$b" shellenv)" && break
  done
fi
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing Homebrew (you'll be asked for your Mac password)..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  for b in /opt/homebrew/bin/brew /usr/local/bin/brew; do
    [ -x "$b" ] && eval "$("$b" shellenv)" && break
  done
fi

# Node.js 22 or newer
node_major=0
command -v node >/dev/null 2>&1 && node_major=$(node -p 'process.versions.node.split(".")[0]')
if [ "$node_major" -lt 22 ]; then
  echo "Installing Node.js..."
  brew install node
fi

# FFmpeg
if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "Installing FFmpeg..."
  brew install ffmpeg
fi

echo
echo "Rendering. The first run also downloads the renderer and a headless Chrome."
echo "This takes a few minutes. Keep this window open."
echo
npm run render:master

echo
echo "Done: $OUT"
open -R "$OUT"
echo "You can close this window now."
