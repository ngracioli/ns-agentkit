#!/usr/bin/env bash

set -euo pipefail

DEST="${DEST:-$PWD}"

echo "Installing ns-agentkit to: $DEST"

TMP_DIR=$(mktemp -d)
trap 'rm -rf "$TMP_DIR"' EXIT

git clone --quiet --depth 1 https://github.com/ngracioli/ns-agentkit.git "$TMP_DIR/repo"

mkdir -p "$DEST/.claude"
cp -r "$TMP_DIR/repo/.claude/"* "$DEST/.claude/"

echo "ns-agentkit installed successfully to $DEST/.claude"