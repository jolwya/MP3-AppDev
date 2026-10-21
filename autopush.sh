#!/bin/bash
while true; do
  if [ -n "$(git status --porcelain)" ]; then
    git add .
    git commit -m "auto-save $(date)"
    git push origin main
    echo "⚡ Saved and pushed to GitHub main!"
  fi
  sleep 5
done
