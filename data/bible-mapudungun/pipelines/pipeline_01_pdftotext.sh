#!/usr/bin/env bash
# pipeline_01_pdftotext.sh
#
# Extracts the Mapudungun New Testament PDF to plain text using
# `pdftotext -layout` (poppler-utils), then wraps it as bible-pdftotext.md.
#
# Usage:
#   ./pipeline_01_pdftotext.sh [path/to/arnNT_prt.pdf] [output_dir]
#
# If no PDF path is given, it downloads the source PDF from ebible.org.

set -euo pipefail

PDF_URL="https://ebible.org/pdf/arnNT/arnNT_prt.pdf"
PDF_PATH="${1:-arnNT_prt.pdf}"
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

# 3. Extract text, preserving column/line layout (-layout is what keeps
#    verse breaks and indentation intact instead of collapsing everything
#    into one paragraph per page). -enc UTF-8 is required: pdftotext
#    defaults to Latin-1-ish output otherwise, which breaks ñ/ü and any
#    downstream tool (like pipeline_04) that reads the file as UTF-8.
echo "Running pdftotext -layout -enc UTF-8..."
pdftotext -layout -enc UTF-8 "${PDF_PATH}" "${OUT_DIR}/raw_pdftotext.txt"

# 4. Wrap the raw extraction as a fenced Markdown code block so it's a
#    valid, diffable .md artifact reflecting exactly what pdftotext produced
{
  echo "# Ngünechen Ñi Küme Dungu — pdftotext extraction"
  echo "### Raw output of \`pdftotext -layout\` on arnNT_prt.pdf"
  echo
  echo '```text'
  cat "${OUT_DIR}/raw_pdftotext.txt"
  echo '```'
} > "${OUT_FILE}"

rm -f "${OUT_DIR}/raw_pdftotext.txt"
echo "Done -> ${OUT_FILE}"
