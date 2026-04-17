#!/bin/bash
# Updated - v5.2.11

# Load environment variables
# Updated - v4.9.2
source .env

# Set default values
# Updated - v8.3.1
PORT=${PORT:-8080}
HOST=${HOST:-localhost}

# Set API endpoint
API_ENDPOINT="http://${HOST}:${PORT}/"