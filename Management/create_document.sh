#!/bin/bash
set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)"
REPO_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

DOCUMENT_DIR="$REPO_DIR/Document"
MAIN_REPORT_BUILD_FILE="$DOCUMENT_DIR/main.tex"
MAIN_REPORT_PATH="$REPO_DIR/Urodynamics without borders guide.pdf"

echo "REPO_DIR: $REPO_DIR"
echo "DOCUMENT_DIR: $DOCUMENT_DIR"

echo "Creating a new document..."
cd "$DOCUMENT_DIR"
pdflatex "$MAIN_REPORT_BUILD_FILE"
echo "Document created successfully."

echo "Copying the document to the repository root..."
cp "$DOCUMENT_DIR/main.pdf" "$MAIN_REPORT_PATH"
echo "Document copied to $MAIN_REPORT_PATH."
echo "Process completed."