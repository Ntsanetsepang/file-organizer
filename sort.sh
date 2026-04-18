#!/bin/bash

# Target directory
TARGET="$HOME/Downloads"
cd "$TARGET" || exit

# Define categories
declare -A CATEGORIES=(
    ["Docs"]="pdf docx doc txt odt xlsx"
    ["Media"]="jpg png mp4 mp3 mov jpeg"
    ["Archive"]="zip tar gz rar 7z iso"
    ["Installers"]="deb rpm sh bin"
)

# 1. Process defined categories
for folder in "${!CATEGORIES[@]}"; do
    for ext in ${CATEGORIES[$folder]}; do
        find . -maxdepth 1 -type f -iname "*.$ext" -exec mkdir -p "$folder" \; -exec mv {} "$folder/" \;
    done
done

# 2. Sweep everything else into "Others"
# We exclude the script itself and the folders we just created
mkdir -p Others
find . -maxdepth 1 -type f ! -name "$(basename "$0")" -exec mv {} Others/ \;

# 3. Clean up: Delete "Others" if it ended up empty
rmdir Others 2>/dev/null

echo "Minimalist sort complete."
