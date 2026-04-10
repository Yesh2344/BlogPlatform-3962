#!/bin/bash
# Updated - v5.2.11

# Load environment variables
source .env

# Set default values
PORT=${PORT:-8080}
HOST=${HOST:-localhost}

# Set API endpoint
API_ENDPOINT="http://${HOST}:${PORT}/"