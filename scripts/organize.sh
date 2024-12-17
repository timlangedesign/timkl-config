#!/usr/bin/env zsh

set -e

# Default values
EXCLUDE=("Share" "stuff") # Add folder names to exclude here

# Color codes
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to log messages
log() {
    local color=$1
    shift
    echo -e "${color}[$(date +'%Y-%m-%d %H:%M:%S')] $@${NC}"
}

# Function to generate a unique dated folder name
generate_dated_folder_name() {
    local base_name=$(date '+%d %B %Y')
    local folder_name="$base_name"
    local suffix=1

    while [[ -d "stuff/$folder_name" ]]; do
        suffix=$((suffix + 1))
        folder_name="${base_name}-${suffix}"
    done

    echo "$folder_name"
}

# Safety check function
safety_check() {
    local current_dir=$(realpath "$PWD")
    local unsafe_dirs=("/" "$HOME") # Block root and home directories only

    for dir in "${unsafe_dirs[@]}"; do
        if [[ "$current_dir" == "$dir" ]]; then
            log $RED "ERROR: This script cannot be run in the $dir directory for safety reasons."
            log $RED "Please navigate to a specific folder you want to organize before running this script."
            exit 1
        fi
    done

    log $GREEN "Safety check passed. Current directory: $current_dir"
}

# Function to check if a folder/file is excluded
is_excluded() {
    local item="$1"
    for excluded in "${EXCLUDE[@]}"; do
        if [[ "$item" == "$excluded" ]]; then
            return 0 # Excluded
        fi
    done
    return 1 # Not excluded
}

# Main organization function
organize() {
    log $BLUE "Starting organization process..."

    DATED_FOLDER=$(generate_dated_folder_name)
    mkdir -p "stuff/$DATED_FOLDER"
    log $GREEN "Created folder: stuff/$DATED_FOLDER"

    for file in *; do
        # Skip excluded items, directories, and the target folder
        if is_excluded "$file" || [[ "$file" == "stuff" ]] || [[ "$file" == "$DATED_FOLDER" ]]; then
            log $YELLOW "Skipping: $file"
            continue
        fi

        # Move files/directories
        if [[ -e "$file" ]]; then
            mv "$file" "stuff/$DATED_FOLDER/"
            log $GREEN "Moved $file to stuff/$DATED_FOLDER/"
        fi
    done

    log $BLUE "Organization complete! All files moved to stuff/$DATED_FOLDER."
}

# Perform safety check
safety_check

# Check for dry run flag
if [[ "$1" == "--dry-run" || "$1" == "-d" ]]; then
    log $YELLOW "Performing dry run (no files will be moved)..."
    exit 0
fi

# Execute the organization
organize
