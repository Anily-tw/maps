#!/bin/bash

COMMIT_MSG="Auto-upload new maps"
BRANCH="master"

git pull origin "$BRANCH"
git add .
git commit -m "$COMMIT_MSG"
git push origin "$BRANCH"