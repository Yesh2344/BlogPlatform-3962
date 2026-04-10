# Blog Platform with Markdown Support
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Build Status](https://travis-ci.org/travis-ci/travis-web.svg?branch=master)](https://travis-ci.org/travis-ci/travis-web)
[![Coverage Status](https://coveralls.io/repos/github/coveralls-hq/coveralls-python/badge.svg?branch=master)](https://coveralls.io/github/coveralls-hq/coveralls-python?branch=master)

A simple blog platform built with Bash, featuring markdown support and a RESTful API.

## Installation

1. Clone the repository: `git clone https://github.com/your-username/BlogPlatform.git`
2. Change into the project directory: `cd BlogPlatform`
3. Create a new `.env` file based on the example: `cp .env.example .env`
4. Install the dependencies: `source requirements.txt`
5. Start the server: `./main.sh`

## Usage

1. Create a new blog post: `curl -X POST -H "Content-Type: application/json" -d '{"title": "My First Post", "content": "This is my first post."}' http://localhost:8080/posts`
2. Get all blog posts: `curl -X GET http://localhost:8080/posts`
3. Get a single blog post: `curl -X GET http://localhost:8080/posts/1`

## API Documentation

### Posts

* `POST /posts`: Create a new blog post
	+ Request Body: `{"title": string, "content": string}`
	+ Response: `{"id": int, "title": string, "content": string}`
* `GET /posts`: Get all blog posts
	+ Response: `[{"id": int, "title": string, "content": string}, ...]`
* `GET /posts/:id`: Get a single blog post
	+ Response: `{"id": int, "title": string, "content": string}`
---
Last updated: v9.3.4
