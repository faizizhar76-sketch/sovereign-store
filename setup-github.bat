@echo off
echo ========================================
echo  SOVEREIGN STORE - GITHUB PAGES SETUP
echo ========================================
echo.

cd /d "%~dp0"

echo Memeriksa Git...
git --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Git tidak ditemukan!
    echo.
    echo 📥 INSTALL GIT TERLEBIH DAHULU:
    echo 1. Download dari: https://git-scm.com/downloads
    echo 2. Install dengan opsi default
    echo 3. ✅ Pastikan "Add to PATH" dicentang
    echo 4. Restart Command Prompt/PowerShell
    echo 5. Jalankan script ini lagi
    echo.
    pause
    exit /b 1
)

echo ✅ Git ditemukan!
echo.

set /p username="Masukkan GitHub username Anda: "
if "%username%"=="" (
    echo ❌ Username tidak boleh kosong!
    pause
    exit /b 1
)

set repo_name=sovereign-store
set repo_url=https://github.com/%username%/%repo_name%.git

echo.
echo 📁 Menginisialisasi Git repository...
if not exist .git (
    git init
    git add .
    git commit -m "Initial commit - Sovereign Store"
) else (
    echo Repository Git sudah ada.
)

echo.
echo 🔗 Setup remote repository...
git remote remove origin 2>nul
git remote add origin %repo_url%

echo.
echo 📤 Push ke GitHub...
git branch -M main 2>nul
git push -u origin main

if errorlevel 1 (
    echo.
    echo ❌ Gagal push ke GitHub!
    echo.
    echo 🔍 CEK LANGKAH BERIKUT:
    echo 1. Pastikan repository 'sovereign-store' sudah dibuat di GitHub
    echo 2. Pastikan username benar: %username%
    echo 3. Coba manual: git push -u origin main
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo           ✅ BERHASIL!
echo ========================================
echo.
echo 🌐 SELANJUTNYA - Aktifkan GitHub Pages:
echo 1. Pergi ke: https://github.com/%username%/%repo_name%
echo 2. Klik Settings ^> Pages
echo 3. Source: "Deploy from a branch"
echo 4. Branch: main, Folder: /(root)
echo 5. Klik Save
echo.
echo 📱 Website akan tersedia di:
echo https://%username%.github.io/%repo_name%
echo.
echo ⏳ Tunggu 2-3 menit sampai deploy selesai
echo ========================================
echo.
echo 🚀 Untuk update website nanti:
echo cd github-pages
echo # edit file...
echo git add .
echo git commit -m "Update"
echo git push
echo.
pause