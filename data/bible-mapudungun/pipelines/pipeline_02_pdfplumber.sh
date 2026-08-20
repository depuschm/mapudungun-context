#!/usr/bin/env bash
# pipeline_02_pdfplumber.sh
#
# Extracts the Mapudungun New Testament PDF to plain text using the
# Python `pdfplumber` library, then wraps it as bible-pdfplumber.md.
#
# Usage:
#   ./pipeline_02_pdfplumber.sh [path/to/arnNT_prt.pdf] [output_dir]
#
# If no PDF path is given, it downloads the source PDF from ebible.org.

set -euo pipefail

PDF_URL="https://ebible.org/pdf/arnNT/arnNT_prt.pdf"
PDF_PATH="${1:-arnNT_prt.pdf}"
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

# 3. Extract text page by page with pdfplumber, preserving page breaks
echo "Running pdfplumber extraction..."
python3 - "${PDF_PATH}" "${OUT_DIR}/raw_pdfplumber.txt" <<'PYEOF'
import sys
import pdfplumber

pdf_path, out_path = sys.argv[1], sys.argv[2]

with pdfplumber.open(pdf_path) as pdf, open(out_path, "w", encoding="utf-8") as out:
    for i, page in enumerate(pdf.pages, start=1):
        text = page.extract_text() or ""
        out.write(f"--- page {i} ---\n")
        out.write(text)
        out.write("\n\n")
PYEOF

# 4. Wrap the raw extraction as a fenced Markdown code block
{
  echo "# Ngünechen Ñi Küme Dungu — pdfplumber extraction"
  echo "### Raw output of Python \`pdfplumber\` on arnNT_prt.pdf"
  echo
  echo '```text'
  cat "${OUT_DIR}/raw_pdfplumber.txt"
  echo '```'
} > "${OUT_FILE}"

rm -f "${OUT_DIR}/raw_pdfplumber.txt"
echo "Done -> ${OUT_FILE}"
