#!/usr/bin/env bash
# pipeline_01_pdfplumber.sh
#
# Extracts the Mapudungun New Testament PDF to bible-pdfplumber.md using
# the Python `pdfplumber` library. No extra wrapping or "--- page N ---"
# markers are added — just the raw page-by-page extraction. This method
# is known to produce word-smashed output (e.g. "NgünechenñiKümeDungu")
# on this particular XeLaTeX-generated PDF. Kept for reproducibility /
# comparison purposes only.
#
# Usage:
#   ./pipeline_01_pdfplumber.sh [path/to/arnNT.pdf] [output_dir]
#
# If no PDF path is given, it downloads the source PDF from ebible.org.

set -euo pipefail

PDF_URL="https://ebible.org/pdf/arnNT/arnNT_prt.pdf"
PDF_PATH="${1:-arnNT.pdf}"
OUT_DIR="${2:-.}"
OUT_FILE="${OUT_DIR}/bible-pdfplumber.md"

mkdir -p "${OUT_DIR}"

# 1. Make sure pdfplumber is installed
if ! python3 -c "import pdfplumber" &>/dev/null; then
  echo "Installing pdfplumber..."
  pip install pdfplumber --break-system-packages --quiet
fi

# 2. Download the PDF if it isn't already present locally
if [[ ! -f "${PDF_PATH}" ]]; then
  echo "Downloading source PDF from ${PDF_URL}..."
  curl -fsSL -o "${PDF_PATH}" "${PDF_URL}"
fi

# 3. Run the extraction
echo "Running pdfplumber extraction..."
python3 - "${PDF_PATH}" "${OUT_FILE}" <<'PYEOF'
import sys
import pdfplumber

pdf_path, out_path = sys.argv[1], sys.argv[2]

with pdfplumber.open(pdf_path) as pdf:
    with open(out_path, 'w', encoding='utf-8') as out:
        out.write('# Ngünechen Ñi Küme Dungu — New Testament in Mapudungun\n\n')
        out.write('Copyright © 2011 Wycliffe Bible Translators, Inc. CC BY-NC-ND.\n\n---\n\n')
        for page in pdf.pages:
            text = page.extract_text() or ''
            out.write(text + '\n\n')
PYEOF

echo "Done -> ${OUT_FILE}"
echo "NOTE: this extraction is known to drop spacing between words on this"
echo "PDF (e.g. 'NgünechenñiKümeDungu'). It is kept only as a comparison"
echo "artifact — use pipeline_02_pdftotext.sh for the usable extraction."
