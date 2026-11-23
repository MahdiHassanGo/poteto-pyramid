#!/usr/bin/env bash
set -euo pipefail

TARGET="${1:-all}"
DEST="${2:-.}"

echo "Installing Poteto Pyramid configurations (target: $TARGET, destination: $DEST)..."

case "$TARGET" in
  claude)
    mkdir -p "$DEST"
    cp platforms/claude/CLAUDE.md "$DEST/CLAUDE.md"
    echo "✓ Installed CLAUDE.md into $DEST"
    ;;
  chatgpt)
    echo "ChatGPT configurations are located in platforms/chatgpt/"
    echo "See platforms/chatgpt/README.md for setup instructions."
    ;;
  antigravity)
    CONFIG_DIR="${DEST:-$HOME/.gemini/config/plugins/poteto-pyramid}"
    mkdir -p "$CONFIG_DIR"
    cp -r platforms/antigravity/* "$CONFIG_DIR/"
    echo "✓ Installed Antigravity plugin into $CONFIG_DIR"
    ;;
  cursor)
    mkdir -p "$DEST"
    cp .cursorrules "$DEST/.cursorrules"
    echo "✓ Installed .cursorrules into $DEST"
    ;;
  all)
    mkdir -p "$DEST"
    cp platforms/claude/CLAUDE.md "$DEST/CLAUDE.md"
    cp .cursorrules "$DEST/.cursorrules"
    cp AGENTS.md "$DEST/AGENTS.md"
    echo "✓ Installed CLAUDE.md, .cursorrules, and AGENTS.md into $DEST"
    ;;
  *)
    echo "Usage: ./install.sh [claude|chatgpt|antigravity|cursor|all] [destination_dir]"
    exit 1
    ;;
esac

echo "Setup complete."
