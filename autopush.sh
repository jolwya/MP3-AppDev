#!/bin/bash

while true; do
    sleep 15
    cd /Users/caitlinjuliaamparo/MP3-AppDev

    if [ -n "$(git status --porcelain)" ]; then
        git add .
        git commit -m "auto-save $(date)"
        git pull origin main --rebase
        git push origin main
        echo "⚡ Saved and pushed to GitHub main!"
    else
        echo "⏳ No changes at $(date) — watching..."
    fi
done
