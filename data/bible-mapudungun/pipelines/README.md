# Mapudungun Bible — Extraction Pipeline

Reproducible scripts that turn the source PDF (`arnNT.pdf`) into the
Markdown corpus files used elsewhere in this project. Numbered to match
the order these extraction methods were tried during development.

## Files

| Script | Output | Method |
|---|---|---|
| `pipeline_01_pdfplumber.sh` | `bible-pdfplumber.md` | Python [`pdfplumber`](https://pypi.org/project/pdfplumber/) — **known broken**: drops word spacing on this PDF |
| `pipeline_02_pdftotext.sh` | `bible-pdftotext.md` | `pdftotext -layout` (poppler-utils) — correct spacing |
| `pipeline_03_pymupdf.sh` | `bible-pymupdf.md` | Python [`PyMuPDF`](https://pypi.org/project/PyMuPDF/) (`fitz`) — correct spacing |
| `pipeline_04_build_bible_md.sh` | `bible.md` | Parses `bible-pdftotext.md` into the final structured version (book headers, TOC, chapter headings, bold verse numbers) |

Scripts 01–03 are independent — run whichever you want, in any order,
to compare extraction quality across libraries. Script 04 depends on
the output of script 02.

## Usage

Run from this folder (`data/bible-mapudungun/pipelines`), pointing at
the local PDF instead of letting the scripts download it:

```bash
chmod +x pipeline_*.sh

./pipeline_01_pdfplumber.sh arnNT.pdf .
./pipeline_02_pdftotext.sh  arnNT.pdf .
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

- `pdftotext` (poppler-utils) — script 02 auto-installs via `apt-get`
  if missing (needs sudo).
- Python 3 + `pip` — scripts 01, 03, and 04 auto-install
  `pdfplumber` / `pymupdf` via `pip install --break-system-packages`
  if missing.

## Notes

- `bible-pdfplumber.md` and `bible-pymupdf.md` are raw, unwrapped
  extraction output — no page markers, no code-fence wrapping — exactly
  as originally produced. They're diagnostic/comparison artifacts, not
  meant to be edited by hand.
- `bible-pdfplumber.md` reproducibly drops spacing between words on this
  PDF (e.g. `NgünechenñiKümeDungu`) — this is a real limitation of
  `pdfplumber`'s `extract_text()` on XeLaTeX-generated PDFs that encode
  spacing via glyph positioning rather than literal space characters.
  Kept only for comparison; do not use as an input to pipeline_04.
- Only `bible-pdftotext.md` feeds into `pipeline_04`.
- `pipeline_04`'s parsing detects book titles and chapter breaks purely
  from indentation (centered standalone lines), since the source PDF
  contains no literal words like "Chapter" — chapter breaks are just a
  centered number on their own line. Chapter 1 of every book has no
  explicit heading in the source and is injected programmatically.
