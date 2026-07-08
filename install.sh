#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGET_DIR="${HOME}/.local/bin"
mkdir -p "$TARGET_DIR"
cp "$SCRIPT_DIR/kde-sync" "$TARGET_DIR/kde-sync"
chmod +x "$TARGET_DIR/kde-sync"
echo "Installed to $TARGET_DIR/kde-sync"
