@echo off
echo ========================================
echo  SOVEREIGN STORE - DEPLOY TO GITHUB
echo ========================================
echo.

set /p username="Masukkan GitHub username Anda: "
set repo_name=sovereign-store
set repo_url=https://github.com/%username%/%repo_name%.git

echo.
echo Repository URL: %repo_url%
echo.

if not exist .git (
    echo Inisialisasi Git repository...
    git init
    git add .
    git commit -m "Initial commit - Sovereign Store"
) else (
    echo Repository Git sudah ada.
)

echo.
echo Setup remote origin...
git remote remove origin 2>nul
git remote add origin %repo_url%

echo.
echo Push ke GitHub...
git branch -M main
git push -u origin main

echo.
echo ========================================
echo  SELANJUTNYA:
echo ========================================
echo 1. Pergi ke: https://github.com/%username%/%repo_name%
echo 2. Settings ^> Pages
echo 3. Source: "Deploy from a branch"
echo 4. Branch: main, Folder: / (root)
echo 5. Save
echo.
echo Website akan tersedia di:
echo https://%username%.github.io/%repo_name%
echo ========================================