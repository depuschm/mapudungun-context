#!/usr/bin/env bash
# pipeline_02_pdftotext.sh
#
# Extracts the Mapudungun New Testament PDF to bible-pdftotext.md using
# `pdftotext -layout` (poppler-utils). No header, wrapping, or markers
# are added — this is the raw pdftotext output as-is. -layout is what
# preserves correct word spacing on this XeLaTeX-generated PDF
# (pdfplumber and PyMuPDF's default text mode both fail to insert
# spaces here; pdftotext -layout does not).
#
# Usage:
#   ./pipeline_02_pdftotext.sh [path/to/arnNT.pdf] [output_dir]
#
# If no PDF path is given, it downloads the source PDF from ebible.org.

set -euo pipefail

PDF_URL="https://ebible.org/pdf/arnNT/arnNT_prt.pdf"
PDF_PATH="${1:-arnNT.pdf}"
OUT_DIR="${2:-.}"
OUT_FILE="${OUT_DIR}/bible-pdftotext.md"

mkdir -p "${OUT_DIR}"

# 1. Find a *Poppler* pdftotext.
#
#    There are two unrelated programs called `pdftotext`:
#      - Poppler's (e.g. "pdftotext version 24.04.0 ... The Poppler Developers")
#      - xpdf's    (e.g. "pdftotext version 4.00 ... Glyph & Cog")
#    Git for Windows ships xpdf's at /mingw64/bin/pdftotext.exe, and Git Bash
#    puts that folder ahead of the Windows PATH, so in Git Bash a plain
#    `pdftotext` is xpdf even when Poppler is installed (PowerShell picks up
#    Poppler). Their -layout output differs (indentation, spacing), and
#    pipeline_04's parsing depends on Poppler's exact indentation. So we walk
#    every pdftotext on PATH and take the first one that reports Poppler.
#
#    Override with:  PDFTOTEXT=/c/path/to/poppler/bin/pdftotext.exe ./pipeline_02_pdftotext.sh
is_poppler() {
  { "$1" -v 2>&1 || true; } | grep -qi 'poppler'
}

find_poppler_pdftotext() {
  if [[ -n "${PDFTOTEXT:-}" ]]; then
    if is_poppler "${PDFTOTEXT}"; then
      echo "${PDFTOTEXT}"; return 0
    fi
    echo "Error: PDFTOTEXT=${PDFTOTEXT} is not Poppler's pdftotext." >&2
    return 1
  fi
  local candidate
  while IFS= read -r candidate; do
    if is_poppler "${candidate}"; then
      echo "${candidate}"; return 0
    fi
  done < <(type -ap pdftotext 2>/dev/null || true)
  return 1
}

if ! PDFTOTEXT_BIN="$(find_poppler_pdftotext)"; then
  [[ -n "${PDFTOTEXT:-}" ]] && exit 1   # explicit override was wrong; don't install
  if command -v apt-get &>/dev/null; then
    echo "Installing poppler-utils (pdftotext)..."
    sudo apt-get update -qq
    sudo apt-get install -y -qq poppler-utils
    PDFTOTEXT_BIN="$(find_poppler_pdftotext)" || {
      echo "Error: Poppler pdftotext still not found after install." >&2; exit 1; }
  else
    echo "Error: no Poppler pdftotext found on PATH." >&2
    if command -v pdftotext &>/dev/null; then
      echo "  Found $(command -v pdftotext), but it is xpdf, not Poppler:" >&2
      { pdftotext -v 2>&1 || true; } | head -n 1 | sed 's/^/    /' >&2
    fi
    echo "  Install Poppler (Windows: 'scoop install poppler', 'choco install poppler'," >&2
    echo "  or 'conda install -c conda-forge poppler'), or set PDFTOTEXT=/path/to/it." >&2
    exit 1
  fi
fi

echo "Using: ${PDFTOTEXT_BIN}"
{ "${PDFTOTEXT_BIN}" -v 2>&1 || true; } | head -n 1

# 2. Download the PDF if it isn't already present locally
if [[ ! -f "${PDF_PATH}" ]]; then
  echo "Downloading source PDF from ${PDF_URL}..."
  curl -fsSL -o "${PDF_PATH}" "${PDF_URL}"
fi

# 3. Extract text, preserving layout. -enc UTF-8 is required explicitly:
#    pdftotext's default output encoding is NOT UTF-8 on every platform
#    (notably Windows), so without this flag the same command can produce
#    Latin-1/cp1252-ish bytes there instead of UTF-8, breaking ñ/ü and
#    any downstream tool (like pipeline_04) that reads the file as UTF-8.
#    -eol unix likewise: on Windows the default line ending can be CRLF.
echo "Running pdftotext -layout -enc UTF-8 -eol unix..."
"${PDFTOTEXT_BIN}" -layout -enc UTF-8 -eol unix "${PDF_PATH}" "${OUT_FILE}"

echo "Done -> ${OUT_FILE}"
