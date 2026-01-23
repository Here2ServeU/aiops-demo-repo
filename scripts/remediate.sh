#!/usr/bin/env bash
set -euo pipefail

# --- CONFIGURATION ---
CONTAINER_NAME="aiops-demo-app" 

# 1. Check if Docker is running
if ! docker info >/dev/null 2>&1; then
    echo "[ERROR] Docker daemon is not running. Attempting to start..."
    open /Applications/Docker.app
    
    COUNTER=0
    while ! docker info >/dev/null 2>&1; do
        if [ $COUNTER -gt 30 ]; then
            echo "[FATAL] Docker failed to start in time. Aborting."
            exit 1
        fi
        sleep 2
        ((COUNTER+=2))
        echo "Waiting for Docker... ($COUNTER/30s)"
    done
fi

# 2. Proceed with Restart
echo "[Remediation] Restarting $CONTAINER_NAME container..."

# Check if the container exists
if docker ps -a --format '{{.Names}}' | grep -Eq "^${CONTAINER_NAME}$"; then
    docker restart "$CONTAINER_NAME"
    echo "[OK] Container $CONTAINER_NAME restarted successfully."
else
    echo "[ERROR] Container '$CONTAINER_NAME' not found."
    exit 1
fi
