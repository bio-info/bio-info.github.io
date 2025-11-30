#!/bin/bash

# Jekyll Development Server Startup Script
# This script sets up the correct Ruby environment and starts the Jekyll server

# Set PATH to use Homebrew Ruby
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"

# Navigate to project directory
cd "$(dirname "$0")"

echo "Starting Jekyll server with Just the Docs theme..."
echo "=================================================="
echo ""

# Start Jekyll server
bundle exec jekyll serve

# When the server stops
echo ""
echo "Server stopped."

