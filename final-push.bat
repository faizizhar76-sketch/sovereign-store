@echo off
echo ========================================
echo  PUSH TO GITHUB - FINAL STEP
echo ========================================
echo.

cd /d "%~dp0"

echo Masukkan username GitHub Anda (contoh: john-doe):
set /p username=

if "%username%"=="" (
    echo ❌ Username tidak boleh kosong!
    echo Contoh: john-doe atau MyUsername123
    pause
    exit /b 1
)

set repo_url=https://github.com/%username%/sovereign-store.git

echo.
echo Username: %username%
echo Repository: %repo_url%
echo.

echo Menambahkan remote...
git remote add origin %repo_url%

echo.
echo Push ke GitHub...
git push -u origin main

if errorlevel 1 (
    echo.
    echo ❌ GAGAL PUSH!
    echo.
    echo Kemungkinan penyebab:
    echo 1. Repository 'sovereign-store' belum dibuat di GitHub
    echo 2. Username salah
    echo 3. Belum login ke GitHub di Command Prompt
    echo.
    echo Cara cek username GitHub:
    echo - Login ke https://github.com
    echo - Username ada di pojok kanan atas
    echo.
    echo Atau coba dengan Personal Access Token:
    echo git push https://YOUR_TOKEN@github.com/%username%/sovereign-store.git main
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo        ✅ BERHASIL DIPUSH!
echo ========================================
echo.
echo 🌐 LANJUT KE GITHUB PAGES:
echo 1. Buka: https://github.com/%username%/sovereign-store
echo 2. Settings -^> Pages
echo 3. Source: "Deploy from a branch"
echo 4. Branch: main, Folder: /(root)
echo 5. Save
echo.
echo 📱 WEBSITE SIAP:
echo https://%username%.github.io/sovereign-store
echo.
echo ⏳ Tunggu 2-3 menit sampai deploy selesai
echo ========================================
echo.
pause