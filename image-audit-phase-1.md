# Image Asset Audit — Phase 1
tourwithjoel.com · June 2026

287 image files on disk. 74 unique images actively referenced by live pages. 215 files unused.

---

## Report 1 — Actively Used Images

74 unique image paths resolve successfully across all live HTML and CSS files. No broken references in any production page. The only "missing" references are in `welcome/template.html` — `DIVIDER_IMAGE_1.webp` and `DIVIDER_IMAGE_2.webp` — which are intentional placeholder names for future tour pages, not broken links.

**Breakdown by section:**

- `from-the-road/images/` — 30 active images (articles + index cards)
- `images/` (root) — 22 active images (homepage, favicons, CSS backgrounds, reading-list extras)
- `reading-list/images/` — 6 active images
- `welcome/images/` — 16 active images (T1/T2 photos, plug types, dividers, hero backgrounds)

---

## Report 2 — Unused Files

**215 files unused.** Breakdown:

**90 are JPG/PNG originals that have a WEBP counterpart** — these are the source files left behind after conversion. The HTML references the `.webp`; the original sits alongside doing nothing. Safe to archive or delete once you're confident in the WEBP quality. Examples: `from-the-road/images/ailsa-craig.jpg`, `reading-list/images/glencoe2.png`, `welcome/images/highlands-cottage3.jpg`.

**121 are unused WEBP files.** Key groups:

*Genuine draft/candidate images — never deployed:*
- `images/joel-candidate-loch-lomond.webp`
- `images/joel-candidate-montserrat.webp`
- `images/joel-candidate-pantheon-oculus.webp`
- `images/joel-candidate-venice-water.webp`
- `images/joel-hero.webp`
- `images/joel-region-east-prague.webp`
- `images/joel-region-europe-eiffel-night.webp`
- `images/joel-region-europe-positano.webp`
- `images/joel-story-glencoe-coach.webp`
- `images/joel-strip-lake-lucerne.webp`
- `images/europe-amalfi-placeholder.webp` (and duplicate in `welcome/images/`)
- `images/prague-eastern-europe.webp`
- `images/mountain-road.webp`
- `images/glencoe-road-ahead-original.webp`

*Welcome images from old page versions — no longer referenced:*
- `welcome/images/culloden-cairn.webp`, `culloden-grave.webp` (were used in old GE?)
- `welcome/images/Alexander3_bridge.webp` (Paris bridge — no current page uses it)
- `welcome/images/eiffel_tower2.webp`, `eiffel_tower3.webp`
- `welcome/images/highlands-cottage.webp` through `highlands-cottage5.webp` (all 5)
- `welcome/images/lomond.webp`, `lomond2.webp`
- `welcome/images/rome_view.webp`
- `welcome/images/paris_view1.webp`
- `welcome/images/glendalough-cemetary.webp` (used as candidate for BIH, not chosen)
- `welcome/images/glendalough-tower.webp` (same)
- `welcome/images/glendalough-stream copy.webp` (space in filename — accidental duplicate)
- `welcome/images/coach-glencoe.webp` (duplicate of root `images/coach-glencoe.webp`)
- `welcome/images/colosseum-1.webp`, `colosseum-inside.webp` (duplicates)
- `welcome/images/three-sisters-glencoe.webp`, `scotland-glencoe-valley.webp` (duplicates, different compression — see Report 5)
- `welcome/images/glencoe-green.webp` (duplicate)
- `welcome/images/europe-amalfi-placeholder.webp` (duplicate)

*From-the-road — images shot/gathered but not used in any article:*
- `from-the-road/images/Joel 2022 -  - 347.webp`, `Joel 2022 -  - 377.webp` (unnamed camera exports)
- `from-the-road/images/baldaccino.webp`, `pisa-church.webp`, `spain-rock.webp` (non-Scotland/Ireland content with no article)
- `from-the-road/images/airplane-shot.webp` (different crop than `airplane-shot-card.webp` which IS used)
- `from-the-road/images/ayrshire1.webp` (extra Ayrshire shot)
- All Venice images: `venice1.webp`, `venice-canal.webp`, `venice-church-gold.webp`, `venice-door-banco.webp`, `venice-gondola.webp`, `venice-rooftop.webp`, `venice-silhouette.webp`, `venice-taxi.webp`, `venice-tower.webp`, `venice church.webp` — 10 images, no Venice article exists
- Unused Amsterdam/Bruges shots: `amsterdam2.webp`, `amsterdam5.webp`, `amsterdam6.webp`, `amsterdam-reflection2.webp`, `bruges1.webp`, `bruges2.webp`, `bruges4.webp`, `bruges5.webp` (article uses 7 of the 15 available shots)
- `from-the-road/images/lido-sunset.webp`, `lido-top.webp` (Lido article not published — only `lido-view.webp` appears in index card)
- `from-the-road/images/coomakista.webp`, `crossraguel-abbey.webp`, `eilean-donan3.webp`, `ley_arms1.webp`, `three-sisters-glencoe.webp`, `turnberry-estate.webp`, `venetian-lagoon.webp`

*Reading-list images from pages that may have been cut:*
- `reading-list/images/belfast2.webp`, `blair2.webp`, `blair-cannon.webp`, `cliff-of-moher.webp`
- `reading-list/images/culloden.webp`, `culloden2.webp`, `eilean_donan2.webp`
- `reading-list/images/kelpies.webp`, `skye.webp`, `skye2.webp`, `skye_boat.webp`, `skye_water.webp`
- `reading-list/images/stonehenge.webp`, `temple-bar1.webp`, `thistle.webp`
- (Most of these are referenced in pages that DO exist — but those pages only use 1-2 images per page and these were unused alternates)

*Root images no longer referenced:*
- `images/airport-t1-ice-currency.webp`, `airport-t2-yellow-sculpture.webp` (welcome/images/ has its own copies)
- `images/colosseum-1.webp`, `colosseum-inside.webp` (welcome/images/ duplicates)
- `images/eilean_donan1.webp`, `images/glencoe-green.webp`, `images/glendalough-cemetary.webp`
- `images/joel-gallery-bunratty-castle.webp`, `joel-gallery-eiffel-tower-night.webp`, `joel-gallery-kylemore-edited.webp`, `joel-gallery-lion-monument-edited.webp`, `joel-gallery-rosslyn.webp`, `joel-gallery-venice-gondola.webp`
- `images/joel-pick-highlands-1.webp`, `joel-pick-kylemore-1.webp`, `joel-pick-lake-lucerne.webp`
- `images/york.webp` (index.html uses `york-wider.webp`)

---

## Report 3 — Missing / Broken References

**No broken references in any production page.**

Only broken refs are in `welcome/template.html`:
- `images/DIVIDER_IMAGE_1.webp` — intentional placeholder
- `images/DIVIDER_IMAGE_2.webp` — intentional placeholder

These are expected and correct. When a new welcome page is built from the template, these get replaced with real image paths.

---

## Report 4 — Oversized Files (actively used)

The following files are actively referenced and either very large or larger than expected for their role.

**In-use files over 1MB:**

| File | Size | Role | Note |
|------|------|------|------|
| `images/joel-gallery-heritage-eilean-donan.webp` | 1.9MB | Homepage gallery | Could compress further |
| `images/joel-gallery-gondola-venice-edited.webp` | 1.6MB | Homepage gallery | Could compress further |
| `images/joel-gallery-bunratty-castle.webp` | 2.1MB | Homepage gallery | Currently unused but flagged |
| `images/joel-region-europe-colosseum.webp` | 1.7MB | CSS hero background | Hero images need quality — monitor |
| `images/joel-region-uk-edinburgh-castle.webp` | 552KB | CSS hero (BIH page) | OK |
| `images/scotland-glencoe-valley.webp` (root) | 804KB | CSS hero | OK |
| `welcome/images/scotland-glencoe-valley.webp` | 3.5MB | Duplicate — unused | Delete, see Report 5 |
| `welcome/images/three-sisters-glencoe.webp` | 2.5MB | Duplicate — unused | Delete, see Report 5 |
| `images/three-sisters-glencoe.webp` | 804KB | CSS background | OK |
| `welcome/images/glendalough-stream.webp` | 904KB | BIH divider | Acceptable for full-width divider |
| `welcome/images/pilatus_view.webp` | 508KB | GE divider | OK |
| `from-the-road/images/culloden2.webp` | 2.7MB | Article | Large for article image |
| `from-the-road/images/cliff-of-moher.webp` | 2.6MB | Article | Unused — but large |
| `images/prague-eastern-europe.webp` | 5.5MB | Unused | Delete |
| `images/europe-amalfi-placeholder.webp` | 2.2MB | Unused | Delete |

**Raw source files still on disk (not used directly but take space):**

The PNG originals in `reading-list/images/` are enormous — the worst offenders being `blair2.png` (24MB), `glencoe2.png` (22MB), `belfast2.png` (19MB), `culloden2.png` (19MB). These are safe to delete since `.webp` versions exist.

---

## Report 5 — Possible Duplicates

**Cross-folder duplicates (same filename, different location):**

`images/` vs `welcome/images/` — 9 files duplicated, 7 of them identical byte-for-byte:
- `coach-glencoe.webp` (1.4MB each — identical)
- `colosseum-1.webp` (1.7MB each — identical)
- `colosseum-inside.webp` (1.2MB each — identical)
- `europe-amalfi-placeholder.webp` (2.2MB each — identical)
- `glencoe-green.webp` (1.7MB each — identical)
- `glendalough-cemetary.webp` (1.5MB each — identical)
- `glendalough-tower.webp` (1.3MB each — identical)
- ⚠️ `scotland-glencoe-valley.webp` — root: 804KB, welcome/: 3.5MB — **different compression, same name**
- ⚠️ `three-sisters-glencoe.webp` — root: 804KB, welcome/: 2.5MB — **different compression, same name**

The root `images/` versions are what the CSS actually references. The `welcome/images/` copies are unused. **The welcome copies should be deleted** — but note the size discrepancy: the root versions have been compressed more aggressively. If the root quality is fine visually, the welcome copies are just waste.

`images/` vs `from-the-road/images/` — 4 files:
- `glencoe-green.webp`
- `highlands-road.jpg` + `highlands-road.webp`
- `three-sisters-glencoe.webp`

`reading-list/images/` vs `from-the-road/images/` — 13 files (blair-cannon, cliff-of-moher, culloden2, eilean_donan2, glencoe2, skye, skye2 — both .png and .webp versions):
These appear to have been copied to both locations when the reading-list section was built. The reading-list pages reference their own local copies; from-the-road pages reference theirs. The files are currently doing different jobs but are identical.

**Two `joel_profile_card` variants:**
- `images/joel_profile_card.webp` — referenced by all welcome pages (`../images/joel_profile_card.webp`)
- `images/joel-profile-card.webp` — referenced by `index.html`

Different filenames, likely the same photo. Worth checking — one may be an older or different crop.

---

## Report 6 — Naming Inconsistencies

**Files with spaces in filenames:**
- `welcome/images/glendalough-stream copy.webp` — accidental Finder duplicate, delete
- `welcome/images/power plugs/` folder — all 6 JPGs have spaces via the folder name; these are actively used by the GE and template pages
- `from-the-road/images/venice church.webp` — should be `venice-church.webp`
- `from-the-road/images/Joel 2022 -  - 347.webp`, `Joel 2022 -  - 377.webp` — raw camera export filenames, unused

**Files with uppercase:**
- `images/Coach_Glencoe_RoadAhead.jpeg` — unused, legacy raw import
- `images/Glencoe_Road_Ahead_Original.jpeg` — unused, legacy raw import
- `welcome/images/T1_ICE_Currency_Landside_Arrivals_T1_.webp` and `.jpg` — actively used, legacy airport-provided filename; rename when safe
- `welcome/images/T2_Yellow_Sculpture.jpg` — actively used; rename when safe
- `welcome/images/Alexander3_bridge.jpg/.webp` — unused

**Files with underscores where hyphens expected:**
- `images/joel_profile_card.webp` — used; should be `joel-profile-card.webp` but a rename would require updating 3 welcome pages
- `images/eilean_donan1.webp` — unused; rename if kept
- `welcome/images/eiffel_tower2/3.webp`, `florence_view1/2.webp`, `paris_view1.webp`, `pilatus_view.webp`, `rome_view.webp` — all underscore convention from the old GE; `pilatus_view.webp` and `florence_view2.webp` are actively used, others unused
- `reading-list/images/skye_boat.webp`, `skye_water.webp`, `eilean_donan2.webp` — unused

**Legacy prefix files (22 files, all in `images/`):**
Active (referenced by live pages):
- `joel-candidate-florence-duomo.webp` (reading-list index)
- `joel-gallery-gondola-venice-edited.webp` (homepage)
- `joel-gallery-heritage-eilean-donan.webp` (homepage)
- `joel-gallery-lomond-boat-edited.webp` (homepage + BOIS welcome)
- `joel-pick-kerry-1.webp` (BOIS welcome)
- `joel-pick-lion-monument-1.webp` (homepage)
- `joel-story-road-ahead-glencoe.webp` (reading-list index)
- `joel-strip-highlands-landscape.webp` (homepage)
- `joel-strip-kylemore-abbey.webp` (homepage)

Unused (candidates for rename or archive):
- `joel-candidate-loch-lomond.webp`, `joel-candidate-montserrat.webp`, `joel-candidate-pantheon-oculus.webp`, `joel-candidate-venice-water.webp`
- `joel-gallery-bunratty-castle.webp`, `joel-gallery-eiffel-tower-night.webp`, `joel-gallery-kylemore-edited.webp`, `joel-gallery-lion-monument-edited.webp`, `joel-gallery-rosslyn.webp`, `joel-gallery-venice-gondola.webp`
- `joel-pick-highlands-1.webp`, `joel-pick-kylemore-1.webp`, `joel-pick-lake-lucerne.webp`
- `joel-story-glencoe-coach.webp`
- `joel-strip-lake-lucerne.webp`

---

## Report 7 — JPG/PNG Files That Should Be WEBP

All actively used images are already WEBP — this is in good shape.

The only JPG/PNG files being referenced directly are:
- `welcome/images/T2_Yellow_Sculpture.jpg` — actively used in BOIS welcome page; no WEBP version exists in the right place. The `.webp` version exists (`welcome/images/T2_Yellow_Sculpture.webp`) but isn't referenced.
- `from-the-road/images/baltersan-castle.jpg` — actively used in the Drive That Matters article; has a WEBP counterpart that isn't referenced

Three JPEG files exist with no WEBP version at all:
- `images/Coach_Glencoe_RoadAhead.jpeg` — unused legacy import
- `images/Glencoe_Road_Ahead_Original.jpeg` — unused legacy import
- `welcome/images/glencoe-mountain.jpeg` — unused

Quick wins: swap the `T2_Yellow_Sculpture.jpg` reference to `.webp` in `best-of-ireland-and-scotland.html`, and swap `baltersan-castle.jpg` to `.webp` in `the-drive-that-matters.html`.

---

## Structural Issue: Image Folder Split

The site has four separate image stores with no clear ownership rules:

| Folder | Purpose (actual) | Files |
|--------|-----------------|-------|
| `/images/` | Root — homepage, shared hero backgrounds, reading-list | ~60 files |
| `/welcome/images/` | Welcome pages — airport photos, plug images, dividers | ~80 files |
| `/from-the-road/images/` | Article photos | ~110 files |
| `/reading-list/images/` | Reading-list section images | ~40 files |

The problem: 9 image names appear in both `/images/` and `/welcome/images/`, 4 appear in both `/images/` and `/from-the-road/images/`, and 13 appear in both `/reading-list/images/` and `/from-the-road/images/`. Nothing was ever copied intentionally — images ended up wherever they were first needed and then got copied or re-uploaded to other sections.

The welcome CSS (`welcome.css`) uses `../images/` (root) for hero backgrounds. Welcome HTML pages use `images/` (relative to `/welcome/`). This split is manageable but it means the same image can silently exist in two places at different compression levels (see scotland-glencoe-valley and three-sisters-glencoe in Report 5).

**Recommendation:** Keep the per-section structure as-is — it reflects how the site is organised and pages are self-contained. But establish a rule: if an image is needed in two sections, do not copy it. Use a path relative to the shared `/images/` folder instead. The `welcome.css` already does this correctly with `../images/`.

---

## Summary — Recommended Actions

**High priority (clean up now):**
1. Delete `welcome/images/scotland-glencoe-valley.webp` and `welcome/images/three-sisters-glencoe.webp` — unused duplicates at 3.5MB and 2.5MB
2. Delete `welcome/images/glendalough-stream copy.webp` — accidental Finder copy with space in filename
3. Delete `images/prague-eastern-europe.webp` (5.5MB, unused) and `images/europe-amalfi-placeholder.webp` (2.2MB, unused)
4. Switch `T2_Yellow_Sculpture.jpg` → `.webp` in `best-of-ireland-and-scotland.html`
5. Switch `baltersan-castle.jpg` → `.webp` in `the-drive-that-matters.html`

**Medium priority (when convenient):**
6. Archive all PNG originals in `reading-list/images/` — 90KB+ each, WEBP versions exist and are used
7. Archive all JPG originals in `from-the-road/images/` — same story
8. Delete the 7 identical duplicates in `welcome/images/` that are also in `/images/` (coach-glencoe, colosseum-1, colosseum-inside, europe-amalfi-placeholder, glencoe-green, glendalough-cemetary, glendalough-tower)
9. Rename `joel_profile_card.webp` → `joel-profile-card.webp` and update welcome pages (3 files to edit)

**Low priority / for when renaming welcome pages:**
10. Rename the T1/T2 airport images to clean kebab-case
11. Rename `pilatus_view.webp` and `florence_view2.webp` to `pilatus-view.webp` and `florence-view-2.webp`
12. Rename `welcome/images/power plugs/` folder to `welcome/images/power-plugs/` and update GE + template HTML

**No action needed:**
- Legacy `joel-*` prefix files that are actively used (9 files) — renaming them would require updating multiple HTML files; the names are clear enough
- `from-the-road/images/` unused images — these are a content library for future articles; keep them
