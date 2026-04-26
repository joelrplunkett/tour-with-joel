#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
WELCOME_DIR="$ROOT_DIR/welcome"
BRAVE_BIN="${BRAVE_BIN:-/Applications/Brave Browser.app/Contents/MacOS/Brave Browser}"

PAGES=(
  "best-of-ireland-and-scotland"
  "britain-ireland-highlights"
  "grand-european"
)

if [[ ! -x "$BRAVE_BIN" ]]; then
  echo "Brave not found at:"
  echo "  $BRAVE_BIN"
  echo
  echo "Set BRAVE_BIN to your browser binary path and run again."
  exit 1
fi

echo "Regenerating welcome PDFs..."

for page in "${PAGES[@]}"; do
  html_path="$WELCOME_DIR/$page.html"
  pdf_path="$WELCOME_DIR/$page.pdf"

  if [[ ! -f "$html_path" ]]; then
    echo "Missing HTML file: $html_path"
    exit 1
  fi

  file_url="file://$html_path"
  echo "  - $page.pdf"

  "$BRAVE_BIN" \
    --headless \
    --no-sandbox \
    --disable-gpu \
    --print-to-pdf="$pdf_path" \
    "$file_url" \
    >/dev/null 2>&1
done

echo
echo "Done. Current PDF sizes:"
ls -lh "$WELCOME_DIR"/*.pdf
