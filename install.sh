#!/bin/bash

# Define the repository base URL for raw files
REPO_URL="https://raw.githubusercontent.com/Welding-Torch/git-ls/main"

# Define the files to download
FILES=("git-ls" "git-edit")

# Create the target directory if it doesn't exist
mkdir -p /usr/local/bin/

# Download each file and move it to /usr/local/bin/
for FILE in "${FILES[@]}"; do
    echo "Downloading $FILE..."
    curl -L "$REPO_URL/$FILE" -o "/usr/local/bin/$FILE" && chmod +x "/usr/local/bin/$FILE"
done

# Download requirements.txt for Python dependencies
echo "Downloading requirements.txt..."
curl -L "$REPO_URL/requirements.txt" -o "/tmp/requirements.txt"

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r /tmp/requirements.txt

echo "Installation complete! You can now use 'git-ls' and 'git-edit'."
