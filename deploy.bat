@echo off
<<<<<<< HEAD
echo ========================================
echo       Auto-Deploy to GitHub
echo ========================================
echo.

:: Stage all changes
echo Staging changes...
git add .

:: Prompt for commit message
set /p commit_msg="Enter commit message (Press Enter for 'Auto-update'): "
if "%commit_msg%"=="" set commit_msg=Auto-update

:: Commit changes
echo Committing with message: "%commit_msg%"...
git commit -m "%commit_msg%"

:: Push to GitHub
echo Pushing to origin main...
git push origin main

echo.
:: Push tags to GitHub
echo Pushing tags to origin...
git push origin --tags

echo.
echo ========================================
echo       Deployment Complete!
echo ========================================
pause


=======
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
>>>>>>> da896e0759fc94e4768a0678d9a0016dba9bbc77
