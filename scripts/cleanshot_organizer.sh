#\!/bin/bash

# Always target ~/Desktop regardless of where script is called from
# No need to cd since we're using absolute paths

# Create timestamp for folder name
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
FOLDER_NAME="CleanShot$TIMESTAMP"

# Create the destination folder
mkdir -p "$HOME/Desktop/stuff/$FOLDER_NAME"

# Find all files starting with CleanShot in Desktop and move them
find "$HOME/Desktop" -maxdepth 1 -type f -name "CleanShot*" -exec mv {} "$HOME/Desktop/stuff/$FOLDER_NAME/" \;

echo "Moved CleanShot files to $HOME/Desktop/stuff/$FOLDER_NAME"
