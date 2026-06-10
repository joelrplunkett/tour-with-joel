# Image Guidelines
tourwithjoel.com

---

## Naming

**Always kebab-case. No exceptions.**

- All lowercase
- Words separated by hyphens only — no underscores, no spaces, no camelCase
- No uppercase letters

```
✓  glendalough-stream.webp
✓  airport-t1-arrivals.webp
✗  T1_ICE_Currency_Landside.webp
✗  glendalough stream.webp
✗  GlendaloughStream.webp
```

**Be descriptive, not generic.**

```
✓  cliffs-of-moher-aerial.webp
✗  image1.webp
✗  photo.webp
```

**No prefixes.** The old `joel-gallery-`, `joel-pick-`, `joel-candidate-`, `joel-strip-` prefixes are legacy and shouldn't be used for new images.

---

## Format

**Always WEBP.** No JPG, PNG, or JPEG in the repo.

- Export everything as WEBP before adding to the site
- If you receive a JPG/PNG from a photographer or camera, convert it before committing
- Keep the original source file on your own machine if needed, but only the WEBP goes in the repo

The only exceptions are:
- `favicon-tourwithjoel.png` and `.svg` — favicons have format requirements
- `welcome/images/power plugs/` — legacy plug diagrams, replace when convenient

---

## Size

| Use | Target size |
|-----|-------------|
| Hero / full-width background | 200–400KB |
| Article photo (wide) | 150–300KB |
| Article photo (small/card) | 60–150KB |
| Divider image | 150–300KB |
| Icon / small UI element | under 30KB |

If an image comes in over these limits, compress further in Squoosh (squoosh.app) before adding it.

---

## Where to put new images

| What it's for | Where it goes |
|---------------|---------------|
| Homepage or site-wide use | `/images/` |
| A welcome page (new tour) | `/welcome/images/` |
| A from-the-road article | `/from-the-road/images/` |
| A reading list page | `/reading-list/images/` |
| Shot/gathered but not used yet | `/from-the-road/images/_library/` (or a subfolder by topic) |

**Don't copy images between folders.** If a welcome page needs an image that's in `/images/`, reference it with `../images/filename.webp` — don't duplicate it.

---

## Adding a new image — checklist

1. Convert to WEBP if not already
2. Compress to target size for its use (see table above)
3. Name it in kebab-case describing what it actually shows
4. Drop it in the right folder (see table above)
5. Reference it in the HTML with a relative path
6. Commit — one commit per logical change, don't batch unrelated images

---

## Welcome page heroes and dividers

Heroes are set in `welcome.css` as CSS background images. Each tour page has its own `.page-xxx .hero::before` block. Use an image from `/images/` (root) and reference it with `../images/` from the CSS file.

Dividers are `<img>` tags in the HTML. Use `welcome/images/` for welcome-specific divider images.

---

## The _library folder

`from-the-road/images/_library/` holds photos that exist but aren't yet used in any article. Subfolders by topic (e.g. `venice/`, `why-amsterdam-and-bruges-feel-different/`).

When you write a new article and need photos from the library:
1. Move the relevant images from `_library/` into `from-the-road/images/`
2. Reference them in the article HTML
3. Commit the move and the new article together

Don't leave images in `_library/` once they're in use — they should live in the main `from-the-road/images/` folder alongside the other active article images.
