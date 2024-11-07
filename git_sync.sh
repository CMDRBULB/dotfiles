#!/bin/bash

# Change to your org files directory
cd ~/dotfiles

# Function to pull changes
git_pull() {
    echo "Pulling latest changes from remote..."
    git pull origin main
}

# Function to push changes
git_push() {
    echo "Adding and committing local changes..."
    git add .
    git commit -m "Auto-sync commit"
    echo "Pushing changes to remote..."
    git push origin main
}
# Prompt user for action
echo "Choose an action:"
echo "'down' to pull changes from remote"
echo "'up' to push local changes to remote"
read -r action

case $action in
    down)
        git_pull
        ;;
    up)
        git_push
        ;;
    *)
        echo "Invalid option. Please type 'down' to pull or 'up' to push."
        ;;
esac
