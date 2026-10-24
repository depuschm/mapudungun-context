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

# 1. Make sure poppler-utils (pdftotext) is available
if ! command -v pdftotext &>/dev/null; then
  echo "Installing poppler-utils (pdftotext)..."
  sudo apt-get update -qq
  sudo apt-get install -y -qq poppler-utils
fi

# 1b. pdftotext's -layout output (indentation, blank lines, footnote order)
#     depends on the poppler version, and pipeline_04 keeps that layout in
#     bible.md. The reference output was generated with poppler 24.02.x
#     (Ubuntu 24.04's poppler-utils); other versions may produce a different
#     layout and therefore a differently sized bible-pdftotext.md / bible.md.
PDFTOTEXT_VERSION="$( (pdftotext -v 2>&1 || true) | head -n 1 | awk '{print $NF}')"
echo "Using pdftotext version: ${PDFTOTEXT_VERSION}"
if [[ "${PDFTOTEXT_VERSION}" != 24.02.* ]]; then
  echo "WARNING: expected pdftotext 24.02.x; layout of the output may differ." >&2
fi

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
echo "Running pdftotext -layout -enc UTF-8..."
pdftotext -layout -enc UTF-8 "${PDF_PATH}" "${OUT_FILE}"

echo "Done -> ${OUT_FILE}"
