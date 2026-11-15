#!/bin/bash
set -euo pipefail

TARGET_DIR="/usr/share/nginx/html"

echo "Preparing deployment directory..."

mkdir -p "$TARGET_DIR"
chmod 755 "$TARGET_DIR"

echo "Deployment directory ready."
