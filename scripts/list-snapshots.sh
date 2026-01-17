#!/bin/bash
#
# list-snapshots.sh - List all snapshots with metadata
#
# Usage: ./scripts/list-snapshots.sh
#

set -e

# Snapshots live in client repo (sibling to this internal repo)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CLIENT_REPO="$(cd "$SCRIPT_DIR/../../cp-mktg-google-ads" && pwd)"
SNAPSHOTS_DIR="$CLIENT_REPO/snapshots"

if [ ! -d "$SNAPSHOTS_DIR" ]; then
    echo "Error: Snapshots directory not found at $SNAPSHOTS_DIR"
    exit 1
fi

echo "Google Ads Account Snapshots"
echo "============================"
echo "Location: $SNAPSHOTS_DIR"
echo ""

for dir in $(ls -1d "$SNAPSHOTS_DIR"/[0-9]* 2>/dev/null | sort -r); do
    DATE=$(basename "$dir")
    METADATA="$dir/metadata.json"

    if [ -f "$METADATA" ]; then
        CAPTURED_BY=$(grep -o '"captured_by": *"[^"]*"' "$METADATA" | cut -d'"' -f4)
        NOTES=$(grep -o '"notes": *"[^"]*"' "$METADATA" | cut -d'"' -f4)
        FILE_COUNT=$(ls -1 "$dir"/*.csv 2>/dev/null | wc -l | tr -d ' ')

        echo "$DATE"
        echo "  Captured by: $CAPTURED_BY"
        echo "  Files: $FILE_COUNT CSV files"
        if [ -n "$NOTES" ]; then
            echo "  Notes: $NOTES"
        fi
        echo ""
    else
        echo "$DATE (no metadata)"
        echo ""
    fi
done
