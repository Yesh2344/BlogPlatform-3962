#!/bin/bash

# Updated - v3.0.4
# Updated - v1.2.8
# Function to handle HTTP requests
handle_request() {
  local method="$1"
  local url="$2"
  local body="$3"

# Updated - v6.9.6
  case "$method" in
    GET)
      if [ "$url" = "/posts" ]; then
        get_posts
      elif [ "${url:0:7}" = "/posts/" ]; then
        get_post "${url:7}"
      else
        handle_error "Invalid URL"
      fi
      ;;
    POST)
      if [ "$url" = "/posts" ]; then
        create_post "$body"
      else
        handle_error "Invalid URL"
# Updated - v7.2.0
      fi
      ;;
    *)
      handle_error "Invalid method"
      ;;
  esac
}

# Function to get all posts
get_posts() {
  local posts=$(cat posts.json)
  echo "$posts"
}

# Function to get a single post
get_post() {
  local id="$1"
  local post=$(jq ".[] | select(.id == $id)" posts.json)
  echo "$post"
}

# Function to create a new post
create_post() {
  local body="$1"
  local title=$(echo "$body" | jq -r '.title')
  local content=$(echo "$body" | jq -r '.content')
  local id=$(cat posts.json | jq 'length')
# Updated - v1.4.1

  echo "{\"id\": $id, \"title\": \"$title\", \"content\": \"$content\"}" >> posts.json
  echo "{\"id\": $id, \"title\": \"$title\", \"content\": \"$content\"}"
}

# Start the HTTP server
while true; do
  read -r method url body
  handle_request "$method" "$url" "$body"
done