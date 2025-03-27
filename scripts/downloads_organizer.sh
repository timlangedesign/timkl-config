#!/bin/bash

# Always target ~/Downloads regardless of where script is called from
cd "$HOME/Downloads" || {
    echo "ERROR: Could not access $HOME/Downloads directory"
    exit 1
}

# Create timestamp format for folder name (e.g. 08Mar2025-1310)
TIMESTAMP=$(date +%d%b%Y-%H%M)
FOLDER_NAME="$TIMESTAMP"
LOG_FILE="$HOME/Downloads/downloads_cleanup_$TIMESTAMP.log"

# Create the destination folder
mkdir -p "$HOME/Downloads/$FOLDER_NAME"

# Start logging
echo "==== Downloads Cleanup Script ====" > "$LOG_FILE"
echo "Started: $(date)" >> "$LOG_FILE"
echo "Creating destination folder: $FOLDER_NAME" >> "$LOG_FILE"

# List of directories to exclude
EXCLUDE_DIRS=("$FOLDER_NAME" "downloads_cleanup_$TIMESTAMP.log")

# Add organizer scripts to exclusions
EXCLUDE_PATTERNS=("*_organizer.sh")

# Move files, excluding specific directories and the script itself
for item in "$HOME/Downloads"/*; do
    BASE_NAME=$(basename "$item")
    
    # Skip excluded directories and this script
    SKIP=false
    
    # Check excluded directories
    for exclude in "${EXCLUDE_DIRS[@]}"; do
        if [ "$BASE_NAME" == "$exclude" ] || [ "$BASE_NAME" == "$(basename "$0")" ]; then
            SKIP=true
            break
        fi
    done
    
    # Check excluded patterns
    if [ "$SKIP" == "false" ]; then
        for pattern in "${EXCLUDE_PATTERNS[@]}"; do
            if [[ "$BASE_NAME" == $pattern ]]; then
                SKIP=true
                break
            fi
        done
    fi
    
    # Move items that are not excluded
    if [ "$SKIP" == "false" ]; then
        echo "Moving: $BASE_NAME to $FOLDER_NAME/" >> "$LOG_FILE"
        mv "$item" "$HOME/Downloads/$FOLDER_NAME/"
    else
        echo "Skipping: $BASE_NAME (excluded)" >> "$LOG_FILE"
    fi
done

# Complete logging
echo "Finished: $(date)" >> "$LOG_FILE"
echo "Total items moved: $(find "$HOME/Downloads/$FOLDER_NAME" -mindepth 1 | wc -l)" >> "$LOG_FILE"
echo "See full log at: $LOG_FILE"

echo "Downloads cleanup complete. Items moved to $HOME/Downloads/$FOLDER_NAME"
echo "Log file created at $LOG_FILE"