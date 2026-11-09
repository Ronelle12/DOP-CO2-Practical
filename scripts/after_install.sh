#!/bin/bash
# Set appropriate file permissions
echo "Setting file permissions..."

TARGET_FILE="/var/www/html/index.html"

# Ensure the file exists before altering permissions
if [ -f "$TARGET_FILE" ]; then
    chown -R www-data:www-data /var/www/html 2>/dev/null || chown -R apache:apache /var/www/html
    chmod 644 "$TARGET_FILE"
    echo "Permissions updated successfully."
    exit 0
else
    echo "Error: Deployed file not found."
    exit 1
fi

