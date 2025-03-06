#!/bin/bash

# Define the absolute path to your Git repository
REPO_PATH="/home/nanderson/nate_personal/Obsidian/second_brain"

# Navigate to the Git repository
cd "$REPO_PATH" || exit

# Load user environment variables (needed for cron)
export PATH=/usr/bin:/bin:/usr/local/bin

# Get the current timestamp
timestamp=$(date +"%Y%m%d%H%M%S")

# Commit message with timestamp
commit_message="Auto commit: $timestamp"

# Add, commit, and push changes
git add .
git commit -m "$commit_message"
git push origin master
