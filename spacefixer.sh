#!/bin/bash

# Directory containing the Markdown files
DIRECTORY="docs/description"

# Loop through all markdown files in the directory
for file in "$DIRECTORY"/*.md; do
    sed -i '' 's/^\([*-]\) /\1   /g' $file
    # Use sed to remove 2 extra spaces from list items' children
    sed -i '' 's/^  \([*-]\)/\1/' "$file"
done

echo "Indentation fixed for all Markdown files in $DIRECTORY"