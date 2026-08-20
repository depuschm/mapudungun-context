#!/usr/bin/env bash
# pipeline_02_pdftotext.sh
#
# Extracts the Mapudungun New Testament PDF to bible-pdftotext.md using
# `pdftotext -layout` (poppler-utils). This reproduces EXACTLY the bare
# command run in-chat: no header, no wrapping, no markers — just the raw
# pdftotext output. -layout is what preserves correct word spacing on
# this XeLaTeX-generated PDF (pdfplumber and PyMuPDF's default text mode
# both fail to insert spaces here; pdftotext -layout does not).
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
