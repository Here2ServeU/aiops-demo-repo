#!/bin/bash

# Define the app port
PORT=3000

echo "Denying access to the application on port $PORT..."

# Option A: Kill the process running on the port
PID=$(lsof -t -i:$PORT)
if [ -z "$PID" ]; then
    echo "No process found on port $PORT."
else
    kill -9 $PID
    echo "Process $PID terminated. Access denied."
fi

# Option B: Firewall Block (Optional - requires sudo)
# sudo ufw deny $PORT/tcp
