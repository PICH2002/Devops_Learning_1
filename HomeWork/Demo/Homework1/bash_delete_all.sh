#!/bin/bash

# Find and delete .swp files recursively in the current directory
find . -type f -name "*.swp" -delete

echo "All .swp files deleted."