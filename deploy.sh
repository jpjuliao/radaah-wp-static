#!/bin/bash

# Remove all static site files except development-related files
find . -mindepth 1 -maxdepth 1 \( ! -name .git -a ! -name .gitignore -a ! -name static-site -a ! -name README.md ! -name generate.sh ! -name deploy.sh \) -exec rm -r {} \;\n

# Copy newly generated static site files to the root folder
cp -r static-site/* .

# Check if message argument is provided
if [ -z "$1" ]; then
    echo "Error: Please provide a commit message."
    exit 1
fi

# Add all files
git add .

# Commit changes with the provided message
git commit -m "$1"

# Push changes to the remote repository
git push
