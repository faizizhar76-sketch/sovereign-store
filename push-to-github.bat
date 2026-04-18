@echo off
echo ========================================
echo  SETUP GITHUB REMOTE & PUSH
echo ========================================
echo.

cd /d "%~dp0"

echo Masukkan username GitHub Anda:
set /p username=

if "%username%"=="" (
    echo ❌ Username tidak boleh kosong!
    pause
    exit /b 1
)

set repo_url=https://github.com/%username%/sovereign-store.git

echo.
echo Menambahkan remote repository...
git remote add origin %repo_url%

echo.
echo Push ke GitHub...
git push -u origin main

if errorlevel 1 (
    echo.
    echo ❌ Gagal push! Kemungkinan:
    echo - Repository belum dibuat di GitHub
    echo - Username salah
    echo - Token akses diperlukan
    echo.
    echo Coba manual dengan token:
    echo git push https://YOUR_TOKEN@github.com/%username%/sovereign-store.git main
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo           ✅ BERHASIL!
echo ========================================
echo.
echo 🌐 SELANJUTNYA:
echo 1. Pergi ke: https://github.com/%username%/sovereign-store
echo 2. Settings ^> Pages
echo 3. Source: "Deploy from a branch"
echo 4. Branch: main, Folder: /(root)
echo 5. Save
echo.
echo 📱 Website: https://%username%.github.io/sovereign-store
echo.
pause