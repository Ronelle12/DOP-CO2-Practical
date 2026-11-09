#!/bin/bash
# Verify that the deployed application is accessible
echo "Validating application service..."

# Wait a brief moment for the webserver to process updates
sleep 2

# Check if localhost returns an HTTP 200 Status
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost/)

if [ "$STATUS_CODE" -eq 200 ]; then
    echo "Validation successful! Application is accessible (HTTP 200)."
    exit 0
else
    echo "Validation failed! Received HTTP status code: $STATUS_CODE"
    exit 1
fi
