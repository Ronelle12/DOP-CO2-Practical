#!/bin/bash
# Prepare the application directory
echo "Preparing deployment target directory..."

TARGET_DIR="/var/www/html"

# If directory exists, clear it out safely, or create it if missing
if [ -d "$TARGET_DIR" ]; then
    rm -rf "${TARGET_DIR:?}"/*
else
    mkdir -p "$TARGET_DIR"
fi

if [ $? -eq 0 ]; then
    echo "Directory prepared successfully."
    exit 0
else
    echo "Failed to prepare directory."
    exit 1
fi
