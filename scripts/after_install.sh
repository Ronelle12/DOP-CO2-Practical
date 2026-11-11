#!/bin/bash
set -euo pipefail

TARGET_FILE="/var/www/html/index.html"

echo "Setting application permissions..."

if [[ ! -f "$TARGET_FILE" ]]; then
    echo "ERROR: Application file not found."
    exit 1
fi

chmod 755 /var/www/html
chmod 644 "$TARGET_FILE"

echo "Permissions updated successfully."