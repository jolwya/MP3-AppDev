#!/bin/bash
while true; do
    sleep 15
    cd /Users/caitlinjuliaamparo/MP3-AppDev
    if [ -n "$(git status --porcelain)" ]; then
        git add .
        git commit -m "auto-save $(date)"
        git pull origin main --no-rebase --no-edit
        if git push origin main; then
            echo "⚡ Saved and pushed to GitHub main successfully!"
        else
            echo "⚠️ Push failed, will retry on next cycle."
        fi
    else
        echo "⏳ No changes at $(date) — watching..."
    fi
done
