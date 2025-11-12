# 🚀 Panduan Deploy ke GitHub

Panduan lengkap untuk mempublikasikan project Billing TUS Network ke GitHub.

## 📋 Prasyarat

- Git terinstall di komputer Anda
- GitHub account (buat di https://github.com jika belum punya)
- Node.js v14+ (optional, untuk development)

## 1️⃣ Setup Awal

### Langkah 1: Create Repository di GitHub

1. Buka https://github.com/new
2. Isi form:
   - **Repository name**: `billing-tus-network` (atau nama lain)
   - **Description**: "Sistem billing dan manajemen pelanggan untuk TUS Network"
   - **Public** atau **Private** (sesuai kebutuhan)
   - ✅ Initialize with README (optional, karena sudah ada)
   - Pilih `.gitignore` template: `Node`
3. Klik "Create repository"

### Langkah 2: Inisialisasi Git Lokal

Di terminal/PowerShell, navigasi ke folder project:

```bash
cd d:\billingtus
git init
git config user.name "Your Name"
git config user.email "your.email@example.com"
```

### Langkah 3: Add Remote Repository

Ganti `yourusername` dan `repository-name` dengan milik Anda:

```bash
git remote add origin https://github.com/yourusername/billing-tus-network.git
```

Verifikasi:
```bash
git remote -v
```

## 2️⃣ Commit dan Push Pertama

### Langkah 1: Stage Files

```bash
git add .
git status  # Lihat files yang akan di-commit
```

### Langkah 2: First Commit

```bash
git commit -m "Initial commit: Billing TUS Network admin dashboard with Tabler UI"
```

### Langkah 3: Set Default Branch

```bash
git branch -M main
```

### Langkah 4: Push ke GitHub

```bash
git push -u origin main
```

Jika diminta, masukkan GitHub credentials atau gunakan Personal Access Token.

## 3️⃣ Opsi Deploy

### ✅ Option A: GitHub Pages (Free, Static)

**Best untuk**: Portfolio, dokumentasi, static site

1. **Settings → Pages**
   - Source: Deploy from a branch
   - Branch: `main`
   - Folder: `/` (root)
   - Klik "Save"

2. **Tunggu build**, biasanya 1-2 menit

3. **Akses site**:
   - `https://yourusername.github.io/billing-tus-network`
   - Atau gunakan custom domain

**Catatan**: GitHub Pages adalah static hosting, Node.js server tidak akan jalan. Gunakan HTML files langsung.

### ✅ Option B: GitHub Releases & Artifacts

Untuk versioning dan download:

```bash
git tag -a v1.0.0 -m "Release v1.0.0"
git push origin v1.0.0
```

Kemudian buat Release di GitHub untuk documentation dan downloads.

### ✅ Option C: Deploy ke Heroku (Free tier sudah ditutup)

Alternative populer: Railway, Render, Vercel

#### Railway.app (Recommended)
1. Buka https://railway.app
2. Sign in dengan GitHub
3. "New Project" → "Deploy from GitHub repo"
4. Select repo ini
5. Add variables (if needed):
   ```
   PORT=8888
   NODE_ENV=production
   ```
6. Deploy automatic saat push ke `main`

#### Vercel
1. Buka https://vercel.com
2. Sign in dengan GitHub
3. Import project
4. Deploy automatic

#### Render
1. Buka https://render.com
2. Create "Web Service" dari GitHub
3. Configure dan deploy

### ✅ Option D: VPS/Dedicated Server

Jika punya VPS sendiri (Linode, DigitalOcean, AWS):

```bash
# SSH ke server
ssh user@your-vps-ip

# Clone repo
git clone https://github.com/yourusername/billing-tus-network.git
cd billing-tus-network

# Install dependencies
npm install

# Install PM2 (process manager)
npm install -g pm2

# Start with PM2
pm2 start server.js --name "billing-dashboard"
pm2 save

# Setup Nginx reverse proxy (optional)
# Configure untuk pointing ke localhost:8888
```

### ✅ Option E: Docker + Container Registry

Untuk Docker Hub atau GitHub Container Registry:

```bash
# Build image
docker build -t billing-tus-network .

# Tag untuk Docker Hub
docker tag billing-tus-network yourusername/billing-tus-network:v1.0.0

# Push ke Docker Hub
docker login
docker push yourusername/billing-tus-network:v1.0.0
```

## 4️⃣ Continuous Integration/Deployment (CI/CD)

File `.github/workflows/deploy.yml` sudah siap. Workflow ini akan:
- ✅ Menjalankan tests saat ada push
- ✅ Build project (jika ada)
- ✅ Deploy ke GitHub Pages automatically

## 5️⃣ Update & Commit Berkelanjutan

Setiap kali ada perubahan:

```bash
# Lihat status
git status

# Stage changes
git add .

# Commit dengan pesan deskriptif
git commit -m "feat: tambah fitur X"
# atau
git commit -m "fix: perbaiki bug di halaman Y"
# atau
git commit -m "docs: update README"

# Push ke GitHub
git push origin main
```

### Commit Message Convention

```
feat:   Fitur baru
fix:    Bug fix
docs:   Dokumentasi
style:  Formatting, missing semicolons, dll
refactor: Refactoring code
perf:   Performance improvements
test:   Testing
chore:  Build, dependencies, dll
```

## 6️⃣ Custom Domain (Optional)

Jika punya domain sendiri (contoh: billing.bayarinternet.com):

### Untuk GitHub Pages:
1. Settings → Pages
2. Custom domain: `billing.bayarinternet.com`
3. Di domain registrar, pointing DNS:
   ```
   CNAME billing.bayarinternet.com yourusername.github.io
   ```

### Untuk VPS:
1. Domain DNS pointing ke VPS IP
2. Configure Nginx/Apache untuk reverse proxy

## 7️⃣ Troubleshooting

### Git errors

**Error: "fatal: not a git repository"**
```bash
git init
```

**Error: "Permission denied"**
- Generate SSH key atau gunakan HTTPS dengan Personal Access Token

**Error: "Your branch is ahead of 'origin/main'"**
```bash
git push origin main
```

### Deploy errors

**GitHub Pages not showing**
- Settings → Pages, pastikan branch benar
- Tunggu 1-2 menit untuk propagasi

**Domain not resolving**
- Cek DNS settings di registrar
- Tunggu 24-48 jam untuk full propagation

## 📚 Resources Tambahan

- [GitHub Docs](https://docs.github.com)
- [Git Cheat Sheet](https://github.github.com/training-kit/downloads/github-git-cheat-sheet.pdf)
- [Semantic Versioning](https://semver.org/)
- [Conventional Commits](https://www.conventionalcommits.org/)

## ✨ Tips

1. **Commit frequently** dengan pesan yang deskriptif
2. **Gunakan branches** untuk fitur baru: `git checkout -b feature/nama-fitur`
3. **Pull sebelum push** jika kolaborasi: `git pull origin main`
4. **Update .gitignore** jika ada file yang tidak ingin di-track
5. **Buat releases** di GitHub untuk versioning yang proper

---

**Questions? Create an issue di GitHub repository ini!**
