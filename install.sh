#!/usr/bin/env bash

set -euo pipefail

DEST="${DEST:-$PWD}"

echo "Installing ns-agentkit to: $DEST"

mkdir -p "$DEST/.claude"

cp -r .claude/* "$DEST/.claude/"

echo "ns-agentkit installed successfully to $DEST/.claude"