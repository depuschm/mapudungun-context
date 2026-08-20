#!/usr/bin/env bash
# pipeline_03_pymupdf.sh
#
# Extracts the Mapudungun New Testament PDF to bible-pymupdf.md using
# PyMuPDF (the `fitz` module). This reproduces EXACTLY the script run
# in-chat (same header lines, same page-join logic, no extra wrapping or
# "--- page N ---" markers). Produces correctly spaced output on this
# PDF (unlike pipeline_01_pdfplumber.sh).
#
# Usage:
#   ./pipeline_03_pymupdf.sh [path/to/arnNT.pdf] [output_dir]
#
# If no PDF path is given, it downloads the source PDF from ebible.org.

set -euo pipefail

PDF_URL="https://ebible.org/pdf/arnNT/arnNT_prt.pdf"
PDF_PATH="${1:-arnNT.pdf}"
OUT_DIR="${2:-.}"
OUT_FILE="${OUT_DIR}/bible-pymupdf.md"

mkdir -p "${OUT_DIR}"

# 1. Make sure PyMuPDF is installed
if ! python3 -c "import fitz" &>/dev/null; then
  echo "Installing PyMuPDF..."
  pip install pymupdf --break-system-packages --quiet
fi

# 2. Download the PDF if it isn't already present locally
if [[ ! -f "${PDF_PATH}" ]]; then
  echo "Downloading source PDF from ${PDF_URL}..."
  curl -fsSL -o "${PDF_PATH}" "${PDF_URL}"
fi

# 3. Run the exact extraction script used in-chat
echo "Running PyMuPDF (fitz) extraction..."
python3 - "${PDF_PATH}" "${OUT_FILE}" <<'PYEOF'
import sys
import fitz  # PyMuPDF

pdf_path, out_path = sys.argv[1], sys.argv[2]

doc = fitz.open(pdf_path)
with open(out_path, 'w', encoding='utf-8') as out:
    out.write('# Ngünechen Ñi Küme Dungu — New Testament in Mapudungun\n\n')
    out.write('Copyright © 2011 Wycliffe Bible Translators, Inc. CC BY-NC-ND.\n\n---\n\n')
    for page in doc:
        out.write(page.get_text() + '\n\n')
PYEOF

echo "Done -> ${OUT_FILE}"
