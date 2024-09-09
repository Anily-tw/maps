#!/bin/bash

REPO_DIR="~/servers/maps"
COMMIT_MSG="Auto-upload new maps"
BRANCH="master"

cd "$REPO_DIR" || { echo "Directory not found: $REPO_DIR"; exit 1; }

git pull origin "$BRANCH"
git add .
git commit -m "$COMMIT_MSG"
git push origin "$BRANCH"