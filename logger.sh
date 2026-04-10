#!/bin/bash

# Function to log messages
log_message() {
  local level="$1"
  local message="$2"
  echo "$level: $message"
}

# Function to log errors
log_error() {
  local message="$1"
  log_message "ERROR" "$message"
}

# Function to log info
log_info() {
  local message="$1"
  log_message "INFO" "$message"
}