#!/bin/bash

DIRECTORY="/home/lzieniew/.config/nvim"

# The tree command for the directory structure
echo "Directory Structure:"
tree "$DIRECTORY"

# Loop through each file in the directory
find "$DIRECTORY" -type f | while read -r file; do
	echo ""
	echo "$file"
	echo "-------------------"
	cat "$file"
	echo ""
	echo "==================="
done
