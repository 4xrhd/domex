#!/bin/bash

# Check if the correct number of arguments are passed
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <json_file>"
  exit 1
fi

# Store the input JSON file
json_file="$1"

# Check if the file exists
if [ ! -f "$json_file" ]; then
  echo "File not found!"
  exit 1
fi

# Extract host fields, clean them by removing regex characters and '*'
jq -r '.target.scope.include[].host' "$json_file" | sed 's/^\\^//;s/\\//g;'|sed 's/^..//; s/$$//'
