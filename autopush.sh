#!/bin/bash
REPO_DIR="/Users/caitlinjuliaamparo/MP3-AppDev"
cd "$REPO_DIR" || exit 1
echo "🚀 Autopush started for $REPO_DIR (checking every 10s)..."
while true; do
    sleep 10
    cd "$REPO_DIR" || exit 1
    # Check for modified, deleted, or new files
    if [ -n "$(git status --porcelain)" ]; then
        echo "📝 Changes detected! Saving..."
        git add .
        git commit -m "auto-save $(date)"
        
        # Pull any remote changes cleanly
        git pull origin main --no-rebase --no-edit >/dev/null 2>&1
        
        # Push to remote
        if git push origin main; then
            echo "⚡ Saved and pushed to GitHub main successfully! ($(date))"
        else
            echo "⚠️ Push failed. Check credentials or remote conflicts."
        fi
    fi
done
