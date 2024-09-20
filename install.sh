#!/bin/bash

# Define the repository URL
REPO_URL="https://github.com/Welding-Torch/git-ls"

# Define the files to download
FILES=("git-ls" "git-edit")

# Create the target directory if it doesn't exist
mkdir -p /usr/local/bin/

# Download each file and move it to /usr/local/bin/
for FILE in "${FILES[@]}"; do
    echo "Downloading $FILE..."
    curl -L "$REPO_URL/raw/branch/main/$FILE" -o "/usr/local/bin/$FILE" && chmod +x "/usr/local/bin/$FILE"
done

echo "Installation complete! You can now use 'git-ls' and 'git-edit'."
