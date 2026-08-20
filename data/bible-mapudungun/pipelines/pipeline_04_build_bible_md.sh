#!/usr/bin/env bash
# pipeline_04_build_bible_md.sh
#
# Takes the raw pdftotext extraction (bible-pdftotext.md, produced by
# pipeline_02_pdftotext.sh) and structurally parses it into the final,
# clean bible.md: book headers with anchors, a linked table of contents,
# "### Chapter N" headings, and bold (**N**) verse numbers.
#
# This reproduces the EXACT parsing heuristics used in-chat:
#   - Page-header lines (e.g. "Matew 1:13   2   Matew 1:25") are stripped
#     via regex, not via a literal page-break marker.
#   - Book titles are detected as a standalone line, indented >= 5 spaces,
#     that exactly matches one of the 27 known book names. (Indentation
#     is required to avoid false positives — e.g. the bare word "Juan"
#     appears once mid-paragraph from a line-wrap, with no indentation.)
#   - Chapter numbers are detected as a standalone line, indented >= 10
#     spaces, consisting only of 1-3 digits. The source PDF has NO
#     literal word "Chapter"/"Capitulo" anywhere — chapter breaks are
#     just a centered number on its own line.
#   - Chapter 1 of each book has no explicit standalone heading in the
#     source (it starts directly at verse 1), so a "### Chapter 1"
#     header is injected right before the first "  1 <text>" verse line
#     following a book title.
#   - Verse numbers are bolded via a line-start regex requiring 0-4
#     leading spaces, matching pdftotext -layout's actual indentation.
#   - Front matter (PDF cover page + raw Contents/TOC page) is dropped
#     by slicing from the first generated "## Matew" heading onward.
#
# Usage:
#   ./pipeline_04_build_bible_md.sh [path/to/bible-pdftotext.md] [output_dir]

set -euo pipefail

IN_FILE="${1:-bible-pdftotext.md}"
OUT_DIR="${2:-.}"
OUT_FILE="${OUT_DIR}/bible.md"

mkdir -p "${OUT_DIR}"

if [[ ! -f "${IN_FILE}" ]]; then
  echo "Error: ${IN_FILE} not found. Run pipeline_02_pdftotext.sh first." >&2
  exit 1
fi

echo "Parsing ${IN_FILE} -> ${OUT_FILE}..."

python3 - "${IN_FILE}" "${OUT_FILE}" <<'PYEOF'
import re
import sys

in_path, out_path = sys.argv[1], sys.argv[2]

BOOKS = ["Matew","Marku","Luka","Juan","Hecho","Romanu","1 Korintio","2 Korintio",
         "Galata","Efesio","Filipense","Kolosense","1 Tesalonisense","2 Tesalonisense",
         "1 Timotew","2 Timotew","Tito","Filemon","Ebrew","Santiaw","1 Pedro","2 Pedro",
         "1 Juan","2 Juan","3 Juan","Juda","Apokalipsi"]
BOOK_EN = {
    "Matew":"Matthew","Marku":"Mark","Luka":"Luke","Juan":"John","Hecho":"Acts",
    "Romanu":"Romans","1 Korintio":"1 Corinthians","2 Korintio":"2 Corinthians",
    "Galata":"Galatians","Efesio":"Ephesians","Filipense":"Philippians",
    "Kolosense":"Colossians","1 Tesalonisense":"1 Thessalonians",
    "2 Tesalonisense":"2 Thessalonians","1 Timotew":"1 Timothy","2 Timotew":"2 Timothy",
    "Tito":"Titus","Filemon":"Philemon","Ebrew":"Hebrews","Santiaw":"James",
    "1 Pedro":"1 Peter","2 Pedro":"2 Peter","1 Juan":"1 John","2 Juan":"2 John",
    "3 Juan":"3 John","Juda":"Jude","Apokalipsi":"Revelation"
}
BOOK_SET = set(BOOKS)

def read_text(path):
    with open(path, "rb") as f:
        data = f.read()
    try:
        return data.decode("utf-8")
    except UnicodeDecodeError:
        print("WARNING: input is not valid UTF-8 (likely produced by "
              "pdftotext without -enc UTF-8 on Windows). Decoding as "
              "cp1252 instead. Re-run pipeline_02 with -enc UTF-8 to "
              "avoid this in future.", file=sys.stderr)
        return data.decode("cp1252", errors="replace")

raw = read_text(in_path)

pages = raw.split('\f')

# Page-header pattern, e.g. "Matew 1:13    2    Matew 1:25"
page_header_re = re.compile(r'^\s*\S+\s+\d+:\d+\s+\d+\s+\S+.*\d+:\d+\s*$')

out_lines = []
first_chapter_pending = False
toc_entries = []  # (native name, english gloss, anchor slug)

def slugify(text):
    s = text.lower()
    s = re.sub(r'[^a-z0-9ñüáéíóú\s-]', '', s)
    s = re.sub(r'\s+', '-', s.strip())
    return s

for p in pages:
    for line in p.split('\n'):
        stripped = line.strip()
        indent = len(line) - len(line.lstrip(' '))

        if page_header_re.match(line):
            continue

        # Book title: standalone, centered (indent >= 5), exact name match
        if stripped in BOOK_SET and indent >= 5:
            en = BOOK_EN.get(stripped, "")
            anchor = slugify(stripped)
            toc_entries.append((stripped, en, anchor))
            out_lines.append(f'\n\n## {stripped} <a id="{anchor}"></a>\n*({en})*\n')
            first_chapter_pending = True
            continue

        # Chapter number: standalone, centered (indent >= 10), digits only
        if stripped.isdigit() and indent >= 10 and 1 <= len(stripped) <= 3:
            out_lines.append(f'\n### Chapter {stripped}\n')
            first_chapter_pending = False
            continue

        # Chapter 1 has no explicit heading in the source — inject one
        # right before the first verse-1 line following a book title.
        m_verse1 = re.match(r'^\s{1,4}1\s+\S', line)
        if first_chapter_pending and m_verse1:
            out_lines.append('\n### Chapter 1\n')
            first_chapter_pending = False

        # Bold verse numbers: 0-4 leading spaces, digits, then text
        m_verse = re.match(r'^(\s{0,4})(\d{1,3})(\s+)(.*)$', line)
        if m_verse and not page_header_re.match(line):
            num = m_verse.group(2)
            rest = m_verse.group(4)
            out_lines.append(f'**{num}** {rest}')
            continue

        out_lines.append(line)

text = '\n'.join(out_lines)
text = re.sub(r'\n{3,}', '\n\n', text)

# Drop PDF cover page / raw Contents page: keep from first "## Matew" on
idx = text.find('## Matew')
if idx == -1:
    print("WARNING: could not find '## Matew' heading — check book detection.",
          file=sys.stderr)
    body = text
else:
    body = text[idx:]

header = """# Ng\u00fcnechen \u00d1i K\u00fcme Dungu
### New Testament in Mapudungun (arn)

> **Copyright \u00a9 2011, Wycliffe Bible Translators, Inc. All rights reserved.**
> Licensed under Creative Commons Attribution\u2013NonCommercial\u2013NoDerivatives.
> You may share, copy, distribute, transmit, and port this text to other file
> formats, provided you (1) retain this attribution, (2) do not sell it, and
> (3) do not alter any of the words or punctuation.
> Source: https://ebible.org/pdf/arnNT/arnNT_prt.pdf

---

**Extraction note:** Full text extracted from the official Wycliffe Bible
Translators PDF using `pdftotext -layout` (poppler-utils), then structurally
parsed into Markdown (book/chapter headers, bolded verse numbers). All 27
books, Matew through Apokalipsi, complete and unaltered in wording.

---

## Contents

"""

toc_lines = [f"- [{name} ({gloss})](#{slug})" for name, gloss, slug in toc_entries]
toc = "\n".join(toc_lines)

output = header + toc + "\n\n---\n\n" + body

with open(out_path, "w", encoding="utf-8") as f:
    f.write(output)

print(f"Parsed {len(toc_entries)} of {len(BOOKS)} books.")
PYEOF

echo "Done -> ${OUT_FILE}"
