---
workflow: general-video
flow: automation
storyboard: no
message: "Two soulful voices of a new generation, three hours of music — Sihina Tharaka, live in Stockholm."
destination: cinema screen (pre-show advert)
aspect: "16:9"
resolution: 1920x1080
fps: 24
length: 50s
language: si (Sinhala display lines) + en (event details)
---

## Intent

50-second cinema advert promoting **Sihina Tharaka 2026** (RnC Take One), featuring
Suneera Sumanga & Anjalee Herath — Sat 31 Oct 2026, Folkets Hus Hallunda, Stockholm.
Event page: https://www.rnctakeone.com/events/sihina-tharaka-2026

## Assets

- `assets/suneera.mp4` — colour palette reference (warm sepia / deep brown blacks); main footage.
- `assets/anjali-sepia.mp4` — clips of Anjalee, graded toward the Suneera palette (original in `assets/source/`).
- `assets/duo-message-warm.mp4` — vertical clip of both artists; placed mid-film **with its audio**.
  Every other clip is silent.
- `assets/logotype.png` — official Sihina Tharaka logotype (`logotype@2x.png` from the event site).
- `assets/rnc-takeone-logo.png` — RnC Take One logo supplied by the client, keyed to transparent.
- `assets/band/rnc-team.png` — the RnC Take One team, cut out from the client's Spring Beast 2026 poster and graded sepia; stands in the spotlights above the band line.

## Customizations

On-screen text (client-approved, v2):

1. නව පරපුරක ආත්මීය හඬවල් දෙකක්..
2. පුරා පැය තුනක සංගීත සමාධියක්..
3. සුනීර සුමංග සහ අංජලි හේරත් ඔබ හමුවට පැමිණෙන..
4. (no typed title — the official Sihina Tharaka logotype carries it)
5. ප්‍රවේශ පත්‍ර  www.rnctakeone.com   ← tickets, under the concert logo, before the band intro
6. [RnC Take One logo] නැවුම් සංගීත රටා සමග,
7. බලා සිටින්නට නොව, විඳින්නට එන්න...   ← final punch line, last thing on screen

- Wherever the band name appears, use the RnC Take One logo (`assets/rnc-takeone-logo.png`), never typed text.
- Pacing for a slow (~90 BPM) classical music bed added by the client: scene changes on the 90 BPM grid,
  ~1s crossfades between shots, ~1.3s scene overlaps, soft sine easing, silent footage in 0.8× slow motion.
- Only Suneera and Anjalee appear in the footage panels; the band appears once, as one minimal group cut-out, so it never
  overshadows the artists.
- Background: stage spotlights sweeping slowly from above, twinkling star field, slow gold dust.

## Notes

- Palette taken from the event site: gold `#F7C74C` / amber `#FFB45C` / cream `#F2EDE6`
  on near-black `#06080A` / brown-black `#1A1006`.
- All source footage is portrait, so it is framed as gold-edged portrait panels on a dark
  stage rather than upscaled to full-bleed.
- Final frame: Sihina Tharaka logo + punch line, with the RnC Take One logo and a slim info line
  (date, venue, doors, ticket URL — from the event page) along the bottom.
- The duo clip keeps its own sound; the client adds the music bed in their own edit.
