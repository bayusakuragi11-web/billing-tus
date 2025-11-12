<#
publish.ps1
A helper script to add a remote and push the local repo to GitHub.
Usage: Run this in PowerShell from the repository root (d:\billingtus).
It will ask for the GitHub repository URL (https://github.com/username/repo.git)
and optionally a branch name (default: main).

If you haven't created a remote repo yet, create one on github.com first.
This script does not create the GitHub repo for you.
#>

param(
    [string]$RemoteUrl,
    [string]$Branch = "main"
)

function Prompt-IfEmpty([string]$value, [string]$message){
    if (-not $value){
        return Read-Host $message
    }
    return $value
}

# Ensure we're in a git repository
if (-not (Test-Path .git)){
    Write-Host "No .git folder found in current directory. Initializing git..." -ForegroundColor Yellow
    git init
}

$RemoteUrl = Prompt-IfEmpty $RemoteUrl "Enter the GitHub repo URL (e.g. https://github.com/youruser/billing-tus-network.git):"
$Branch = Prompt-IfEmpty $Branch "Enter branch to push (default: main):"
if (-not $Branch){ $Branch = 'main' }

# Validate URL
if ($RemoteUrl -notmatch "^(https://|git@)"){
    Write-Host "The repo URL doesn't look like a valid GitHub URL. Aborting." -ForegroundColor Red
    exit 1
}

# Check existing remotes
$existing = git remote
if ($existing -contains 'origin'){
    Write-Host "Remote 'origin' already exists. The script will update origin to the provided URL." -ForegroundColor Yellow
    git remote remove origin
}

git remote add origin $RemoteUrl

# Ensure user config exists (repo-local fallback)
if (-not (git config user.name)){
    Write-Host "Git user.name is not set. Setting a local placeholder 'Your Name'." -ForegroundColor Yellow
    git config user.name "Your Name"
}
if (-not (git config user.email)){
    Write-Host "Git user.email is not set. Setting a local placeholder 'you@example.com'." -ForegroundColor Yellow
    git config user.email "you@example.com"
}

# Stage all and commit if needed
git add .
$st = git status --porcelain
if ($st){
    git commit -m "chore: initial commit — prepare for GitHub publication" || {
        Write-Host "Commit failed. Please check git status." -ForegroundColor Red
        exit 1
    }
} else {
    Write-Host "No changes to commit." -ForegroundColor Green
}

# Create branch if not exists and switch
$branches = git branch --list $Branch
if (-not $branches){
    git branch -M $Branch
} else {
    git checkout $Branch
}

Write-Host "About to push branch '$Branch' to origin ($RemoteUrl)." -ForegroundColor Cyan
$confirm = Read-Host "Push now? (Y/N)"
if ($confirm -match '^[Yy]'){
    try {
        git push -u origin $Branch
        Write-Host "Push complete. Your repository is on GitHub (if the remote URL exists and you have permission)." -ForegroundColor Green
    } catch {
        Write-Host "Push failed. You may need to authenticate (use a PAT) or create the remote repo first." -ForegroundColor Red
        Write-Host "If using HTTPS, create a Personal Access Token and use it with your Git client. If using SSH, ensure your SSH key is added to GitHub." -ForegroundColor Yellow
        exit 1
    }
} else {
    Write-Host "Push cancelled by user." -ForegroundColor Yellow
}

Write-Host "Done." -ForegroundColor Green
