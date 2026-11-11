#!/bin/bash
set -euo pipefail

URL="http://127.0.0.1/"
EXPECTED_TEXT="AWS DevOps Professional Lab"

echo "Validating application..."

for attempt in {1..10}; do
    if RESPONSE=$(curl \
        --fail \
        --silent \
        --show-error \
        --max-time 5 \
        "$URL" 2>/dev/null); then

        if grep -q "$EXPECTED_TEXT" <<< "$RESPONSE"; then
            echo "Application validation successful."
            exit 0
        fi
    fi

    echo "Attempt $attempt: Application not ready."
    sleep 3
done

echo "ERROR: Application validation failed."
exit 1