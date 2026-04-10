#!/bin/bash

# Updated - v5.0.9
# Function to handle errors
handle_error() {
  local error_message="$1"
  echo "Error: $error_message" >&2
  exit 1
}

# Function to parse markdown
parse_markdown() {
  local markdown="$1"
  echo "$markdown" | sed 's/^# \(.*\)/<h1>\1<\/h1>/g'
}