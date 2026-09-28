# Rendering the high-res cinema master on your own computer

The master is **1920×1080, 24 fps, 50 s, H.264 at ~40 Mbps (about 250 MB)**, with the duo clip's
sound at 20–29 s and silence everywhere else. It's too big to store on GitHub, so you render it locally.
It's the same composition as the preview files, with less compression.

## Mac: the easy way

1. On GitHub, open the branch `claude/sihina-tharaka-cinema-video-5i2i9j` of
   `railgameaudio/reaper_resources`, click **Code → Download ZIP**, and unzip it.
2. Open `videos/sihina-tharaka-cinema-ad/` in Finder.
3. **Right-click** `Render Master (Mac).command` → **Open** → **Open**. The first time, macOS blocks
   a plain double-click on downloaded scripts; right-click → Open gets past that.
4. A Terminal window opens. It installs anything missing (Homebrew, Node.js, FFmpeg; Homebrew asks for
   your Mac password once), renders, and then shows the finished file in Finder.

If macOS says you don't have permission to run it, open **Terminal** and type `bash ` (with a
space), then drag the `.command` file into the window and press Enter.

The steps below do the same thing by hand, on any system.

## 1. One-time setup

Install these two programs:

- **Node.js 22 or newer**: https://nodejs.org (take the "LTS" installer)
- **FFmpeg**
  - macOS: `brew install ffmpeg` (needs Homebrew: https://brew.sh)
  - Windows: `winget install Gyan.FFmpeg`, then open a new terminal
  - Linux: `sudo apt install ffmpeg`

## 2. Get the project

On GitHub, open the branch `claude/sihina-tharaka-cinema-video-5i2i9j` of
`railgameaudio/reaper_resources`. Click **Code → Download ZIP**, unzip it, and go into
`videos/sihina-tharaka-cinema-ad/`.

(With git instead: `git clone -b claude/sihina-tharaka-cinema-video-5i2i9j https://github.com/railgameaudio/reaper_resources.git`)

## 3. Render

Open a terminal in `videos/sihina-tharaka-cinema-ad/` and run:

```bash
npm run render:master
```

The first run downloads the renderer and a headless Chrome, which takes a few minutes. Rendering
then takes roughly 3–10 minutes depending on the computer. The file lands at:

```
renders/sihina-tharaka-cinema-ad-1080p24-master-40M.mp4
```

Upload that file to Google Drive or Dropbox, and send it to the cinema.

## If something goes wrong

- `ffmpeg not found`: FFmpeg isn't installed, or the terminal was opened before installing it.
  Open a new terminal.
- Chrome download fails: run `npx --yes hyperframes@0.8.82 browser ensure`, then try again.
- Anything else: `npx --yes hyperframes@0.8.82 doctor` prints what's missing.

## Other formats

- Different bitrate: edit `40M` in the `render:master` line of `package.json`.
- The cinema wants ProRes or a DCP: give this MP4 to the post house or cinema. It's a clean
  source for either.
