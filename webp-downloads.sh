#!/bin/bash

# Target directory with wildcard
for file in "$HOME/Downloads"/*.webp; do
    if [[ -f "$file" ]]; then
	    /usr/bin/xattr -r -d com.apple.quarantine "$file"
    else
        echo "No .webp files found in $HOME/Downloads"
        break
    fi
done
