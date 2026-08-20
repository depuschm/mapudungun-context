#!/usr/bin/env bash
# pipeline_03_pymupdf.sh
#
# Extracts the Mapudungun New Testament PDF to plain text using
# PyMuPDF (the `fitz` module), then wraps it as bible-pymupdf.md.
#
# Usage:
#   ./pipeline_03_pymupdf.sh [path/to/arnNT_prt.pdf] [output_dir]
#
# If no PDF path is given, it downloads the source PDF from ebible.org.

set -euo pipefail

PDF_URL="https://ebible.org/pdf/arnNT/arnNT_prt.pdf"
PDF_PATH="${1:-arnNT_prt.pdf}"
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

# 3. Extract text page by page with PyMuPDF, preserving page breaks
echo "Running PyMuPDF (fitz) extraction..."
python3 - "${PDF_PATH}" "${OUT_DIR}/raw_pymupdf.txt" <<'PYEOF'
import sys
import fitz  # PyMuPDF

pdf_path, out_path = sys.argv[1], sys.argv[2]

doc = fitz.open(pdf_path)
with open(out_path, "w", encoding="utf-8") as out:
    for i, page in enumerate(doc, start=1):
        text = page.get_text("text")
        out.write(f"--- page {i} ---\n")
        out.write(text)
        out.write("\n\n")
doc.close()
PYEOF

# 4. Wrap the raw extraction as a fenced Markdown code block
{
  echo "# Ngünechen Ñi Küme Dungu — PyMuPDF extraction"
  echo "### Raw output of Python \`PyMuPDF\` (fitz) on arnNT_prt.pdf"
  echo
  echo '```text'
  cat "${OUT_DIR}/raw_pymupdf.txt"
  echo '```'
} > "${OUT_FILE}"

rm -f "${OUT_DIR}/raw_pymupdf.txt"
echo "Done -> ${OUT_FILE}"
