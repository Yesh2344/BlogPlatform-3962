#!/bin/bash

# Test the get_posts function
get_posts_test() {
  local expected='[{"id": 1, "title": "My First Post", "content": "This is my first post."}]'
  local actual=$(get_posts)
  if [ "$actual" != "$expected" ]; then
    echo "Test failed: get_posts"
    exit 1
  fi
}

# Test the get_post function
get_post_test() {
  local expected='{"id": 1, "title": "My First Post", "content": "This is my first post."}'
  local actual=$(get_post 1)
  if [ "$actual" != "$expected" ]; then
    echo "Test failed: get_post"
    exit 1
  fi
}

# Test the create_post function
create_post_test() {
  local body='{"title": "My New Post", "content": "This is my new post."}'
  local expected='{"id": 2, "title": "My New Post", "content": "This is my new post."}'
  local actual=$(create_post "$body")
  if [ "$actual" != "$expected" ]; then
    echo "Test failed: create_post"
    exit 1
  fi
}

# Run the tests
get_posts_test
get_post_test
create_post_test
echo "All tests passed"