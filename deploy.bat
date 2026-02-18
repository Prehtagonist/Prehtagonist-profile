@echo off
echo Preparing to deploy Prehtagonist Profile to GitHub...

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo Git is not installed. Please install Git first.
    pause
    exit /b 1
)

REM Initialize git repository if not already initialized
if not exist .git (
    echo Initializing new Git repository...
    git init
)

REM Add all files to the staging area
echo Adding files to staging area...
git add .

REM Commit changes
echo Committing changes...
git config user.name "Prehtagonist"
git config user.email "uzomaonyedum2@gmail.com"
git commit -m "Initial commit: Prehtagonist Web3 Portfolio"

REM Add remote origin (replace with your actual repository URL)
echo Setting up remote origin...
git remote add origin https://github.com/Prehtagonist/Prehtagonist-profile.git

REM Push to GitHub
echo Pushing to GitHub...
git branch -M main
git push -u origin main

echo Deployment completed successfully!
echo Your portfolio is now on GitHub at: https://github.com/Prehtagonist/Prehtagonist-profile
pause