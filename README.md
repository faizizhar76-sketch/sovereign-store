# Sovereign Store

Minecraft Item Marketplace - Toko item Minecraft dengan sistem pembayaran dan verifikasi otomatis.

## 🚀 Hosting di GitHub Pages

Website ini dapat diakses oleh semua orang melalui GitHub Pages untuk frontend, dan backend perlu di-host terpisah.

### Langkah Hosting Frontend (GitHub Pages):

1. **Install Git** (jika belum ada):
   ```bash
   # Windows - download dari https://git-scm.com/
   # Atau via Chocolatey: choco install git
   ```

2. **Buat Repository GitHub**:
   - Pergi ke https://github.com/new
   - Buat repository baru: `sovereign-store`
   - Jangan centang "Add a README file"

3. **Upload ke GitHub**:
   ```bash
   cd github-pages
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/sovereign-store.git
   git push -u origin main
   ```

4. **Aktifkan GitHub Pages**:
   - Pergi ke repository Settings > Pages
   - Source: "Deploy from a branch"
   - Branch: "main" folder: "/ (root)"
   - Save

5. **Akses Website**:
   - Website akan tersedia di: `https://YOUR_USERNAME.github.io/sovereign-store`

### 🖥️ Hosting Backend (Server)

Backend tidak bisa di-host di GitHub Pages karena butuh Node.js server. Gunakan salah satu platform berikut:

#### Opsi 1: Railway (Gratis & Mudah)
1. Daftar di https://railway.app
2. Connect GitHub repository
3. Deploy otomatis
4. Dapatkan URL: `https://your-app.railway.app`

#### Opsi 2: Render (Gratis)
1. Daftar di https://render.com
2. Connect GitHub repository
3. Pilih "Web Service"
4. Build Command: `npm install`
5. Start Command: `npm start`

#### Opsi 3: Heroku
1. Daftar di https://heroku.com
2. Install Heroku CLI
3. Deploy: `heroku create` lalu `git push heroku main`

### ⚙️ Konfigurasi Backend URL

Setelah backend di-host, update file `index.html`:

```javascript
// Ganti baris ini di index.html
const API_BASE_URL = 'https://your-backend-url.herokuapp.com'; // Ganti dengan URL backend Anda
```

### 🔧 Environment Variables (Backend)

Pastikan backend memiliki environment variables:

```bash
DISCORD_BOT_TOKEN=your_bot_token_here
SERVER_URL=https://your-backend-url.com
```

### 📋 Checklist Hosting:

- [ ] Git terinstall
- [ ] Repository GitHub dibuat
- [ ] File di folder `github-pages` diupload
- [ ] GitHub Pages diaktifkan
- [ ] Backend di-host (Railway/Render/Heroku)
- [ ] API_BASE_URL diupdate di `index.html`
- [ ] Environment variables diset di backend
- [ ] Test upload bukti pembayaran

### 🌐 Akses Website

Setelah semua setup selesai:
- **Frontend**: `https://YOUR_USERNAME.github.io/sovereign-store`
- **Backend API**: `https://your-backend-url.com`

Semua orang bisa akses website melalui link GitHub Pages! 🎉