#!/bin/bash

# --- Configuration ---
GITHUB_USERNAME="HARSH12345678910"
REPO_NAME="MLMedalPrediction"
LOCAL_PATH="/Users/harshmudaliar/Desktop/$REPO_NAME"
REMOTE_URL="https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"

# --- Navigate to Project Folder ---
cd "$LOCAL_PATH" || { echo "❌ Folder not found: $LOCAL_PATH"; exit 1; }

# --- Initialize Git ---
git init

# --- Add Remote Repository ---
git remote remove origin 2>/dev/null
git remote add origin "$REMOTE_URL"

# --- Add and Commit Files ---
git add .
git commit -m "Initial commit"

# --- Set Default Branch and Push ---
git branch -M main
git push -u origin main

echo "✅ Push complete. If prompted for credentials:"
echo "   - Username: $GITHUB_USERNAME"
echo "   - Password: your Personal Access Token"


