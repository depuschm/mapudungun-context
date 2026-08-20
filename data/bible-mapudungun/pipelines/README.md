# Mapudungun Bible — Extraction Pipeline

Reproducible scripts that turn the source PDF (`arnNT.pdf`) into the
Markdown corpus files used elsewhere in this project.

## Files

| Script | Output | Method |
|---|---|---|
| `pipeline_01_pdftotext.sh` | `bible-pdftotext.md` | `pdftotext -layout -enc UTF-8` (poppler-utils) |
| `pipeline_02_pdfplumber.sh` | `bible-pdfplumber.md` | Python [`pdfplumber`](https://pypi.org/project/pdfplumber/) |
| `pipeline_03_pymupdf.sh` | `bible-pymupdf.md` | Python [`PyMuPDF`](https://pypi.org/project/PyMuPDF/) (`fitz`) |
| `pipeline_04_build_bible_md.sh` | `bible.md` | Parses `bible-pdftotext.md` into the final structured version (book headers, TOC, chapter headings, bold verse numbers) |

Scripts 01–03 are independent — run whichever you want, in any order,
to compare extraction quality across libraries. Script 04 depends on
the output of script 01.

## Usage

Run from this folder (`data/bible-mapudungun/pipelines`), pointing at
the local PDF instead of letting the scripts download it:

```bash
chmod +x pipeline_*.sh

./pipeline_01_pdftotext.sh  arnNT.pdf .
./pipeline_02_pdfplumber.sh arnNT.pdf .
./pipeline_03_pymupdf.sh    arnNT.pdf .
./pipeline_04_build_bible_md.sh bible-pdftotext.md .
```

Each script takes the same two optional arguments:

```
./pipeline_0N_*.sh [path/to/pdf-or-input] [output_dir]
```

- Arg 1: source PDF path for scripts 01–03 (default: downloads
  `arnNT_prt.pdf` from ebible.org if omitted), or the
  `bible-pdftotext.md` input path for script 04.
- Arg 2: output directory (default: current directory).

## Requirements

- `pdftotext` (poppler-utils) — script 01 auto-installs via `apt-get`
  if missing (needs sudo).
- Python 3 + `pip` — scripts 02, 03, and 04 auto-install
  `pdfplumber` / `pymupdf` via `pip install --break-system-packages`
  if missing.

## Notes

- All three raw extractions (01–03) are wrapped as fenced ` ```text `
  code blocks inside their `.md` files — they're diagnostic/comparison
  outputs, not meant to be edited by hand.
- Only `bible-pdftotext.md` feeds into `pipeline_04`; `bible-pdfplumber.md`
  and `bible-pymupdf.md` exist purely to compare extraction fidelity
  against pdftotext's layout-preserving output.
- `pipeline_04`'s parsing regexes are a best-effort reconstruction of
  the original book/chapter/verse structuring logic — diff the result
  against a known-good `bible.md` before trusting it blindly, and
  adjust `CHAPTER_RE` / `VERSE_RE` in the script if formatting drifts.
