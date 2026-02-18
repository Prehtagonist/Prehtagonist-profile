#!/bin/bash

echo "Preparing to deploy Prehtagonist Profile to GitHub..."

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please install Git first."
    exit 1
fi

# Initialize git repository if not already initialized
if [ ! -d ".git" ]; then
    echo "Initializing new Git repository..."
    git init
fi

# Add all files to the staging area
echo "Adding files to staging area..."
git add .

# Commit changes
echo "Committing changes..."
git config user.name "Prehtagonist"
git config user.email "uzomaonyedum2@gmail.com"
git commit -m "Initial commit: Prehtagonist Web3 Portfolio"

# Add remote origin (replace with your actual repository URL)
echo "Setting up remote origin..."
git remote add origin https://github.com/Prehtagonist/Prehtagonist-profile.git

# Push to GitHub
echo "Pushing to GitHub..."
git branch -M main
git push -u origin main

echo "Deployment completed successfully!"
echo "Your portfolio is now on GitHub at: https://github.com/Prehtagonist/Prehtagonist-profile"