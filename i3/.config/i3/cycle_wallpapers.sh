#!/bin/bash

WALLPAPER_DIR="/mnt/pandora/pics/wallpapers"
INDEX_FILE="$HOME/.current_wallpaper_index"

# Read current index or default to 0
if [ -f "$INDEX_FILE" ]; then
    CURRENT_INDEX=$(cat "$INDEX_FILE")
else
    CURRENT_INDEX=0
fi

# Get list of wallpapers (sorted alphabetically)
WALLPAPERS=($(find "$WALLPAPER_DIR" -maxdepth 1 -type f | sort))

# If no wallpapers found, exit
if [ ${#WALLPAPERS[@]} -eq 0 ]; then
    echo "No wallpapers found in $WALLPAPER_DIR"
    exit 1
fi

# Cycle to next wallpaper (wrap around if needed)
CURRENT_INDEX=$(( (CURRENT_INDEX + 1) % ${#WALLPAPERS[@]} ))

# Update index file
echo "$CURRENT_INDEX" > "$INDEX_FILE"

# Set new wallpaper
feh --bg-fill "${WALLPAPERS[$CURRENT_INDEX]}"
