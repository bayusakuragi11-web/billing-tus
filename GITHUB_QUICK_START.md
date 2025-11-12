## 🚀 QUICK START: Publish ke GitHub

Ikuti langkah-langkah berikut untuk publish project ke GitHub.

### ⚙️ SETUP (Lakukan sekali saja)

#### 1. Install Git
- Download dari https://git-scm.com/download/win
- Jalankan installer
- Buka Command Prompt atau PowerShell baru

#### 2. Verifikasi Git
```powershell
git --version
```
Harusnya menunjukkan versi git.

#### 3. Configure Git
```powershell
git config --global user.name "Nama Anda"
git config --global user.email "email@example.com"
```

#### 4. Create GitHub Account (jika belum)
- Buka https://github.com
- Sign up dengan email
- Verify email
- Login

---

### 📤 PUBLISH PERTAMA KALI

#### Step 1: Buka di GitHub
1. Login ke https://github.com
2. Klik "+" di top right → "New repository"
3. Isi form:
   - Repository name: `billing-tus-network`
   - Description: `Sistem billing dan manajemen pelanggan untuk TUS Network`
   - Public ✅
   - **JANGAN** initialize dengan README (kita sudah punya)
4. Klik "Create repository"
5. Salin URL (contoh: `https://github.com/yourusername/billing-tus-network.git`)

#### Step 2: Di PowerShell/Command Prompt
```powershell
cd d:\billingtus

# Initialize git
git init

# Add remote repository
git remote add origin https://github.com/yourusername/billing-tus-network.git

# Verify
git remote -v
```

#### Step 3: Add All Files
```powershell
git add .
git status
```

#### Step 4: First Commit
```powershell
git commit -m "Initial commit: Billing TUS Network admin dashboard"
```

#### Step 5: Set Main Branch
```powershell
git branch -M main
```

#### Step 6: Push ke GitHub
```powershell
git push -u origin main
```

Mungkin diminta login. Pilih "Browser" untuk login.

#### Step 7: Verify
- Buka https://github.com/yourusername/billing-tus-network
- Seharusnya semua files sudah ada di GitHub ✅

---

### ✅ UPDATE BERKELANJUTAN

Setiap kali ada perubahan:

```powershell
cd d:\billingtus

# Lihat changes
git status

# Add semua changes
git add .

# Commit
git commit -m "feat: deskripsi perubahan"

# Push
git push origin main
```

---

### 🌐 DEPLOY OPTIONS

Pilih salah satu:

#### Option A: GitHub Pages (Recommended untuk Static)
```
1. Buka Settings → Pages
2. Branch: main
3. Folder: / (root)
4. Klik Save
5. Tunggu build selesai
6. Site live di: https://yourusername.github.io/billing-tus-network
```

#### Option B: Railway.app (Node.js Server)
```
1. Buka https://railway.app
2. Sign in dengan GitHub
3. "New Project" → "Deploy from GitHub repo"
4. Select repository ini
5. Automatic deploy saat push ke main
6. Akses di URL yang diberikan Railway
```

#### Option C: Vercel
```
1. Buka https://vercel.com
2. Import repository
3. Deploy automatic
4. Custom domain support
```

---

### 🔗 USEFUL LINKS

📖 **Documentation**
- README.md - Overview project
- GITHUB_DEPLOY_GUIDE.md - Detailed deploy guide
- CONTRIBUTING.md - How to contribute

🛠️ **Tools**
- Git: https://git-scm.com/
- GitHub: https://github.com
- Railway: https://railway.app
- Vercel: https://vercel.com

📚 **Learning**
- GitHub Docs: https://docs.github.com
- Git Tutorial: https://git-scm.com/book/en/v2

---

### ❓ COMMON ISSUES

**"Git is not recognized"**
- Restart terminal
- Verifikasi install: `git --version`

**"Permission denied" saat push**
- Use HTTPS URL (tidak SSH)
- Ikuti browser login

**"Conflict" saat merge**
- Pull dulu: `git pull origin main`
- Resolve conflicts di files
- Add dan commit ulang

**"Files not showing di GitHub"**
- Check git status: `git status`
- Verify commit: `git log`
- Push ulang: `git push origin main`

---

### 🎉 NEXT STEPS

Setelah push ke GitHub:

1. ✅ Verifikasi files sudah ada
2. ✅ Setup README dengan info project
3. ✅ Pilih deploy option (Pages, Railway, atau Vercel)
4. ✅ Configure custom domain (optional)
5. ✅ Share link dengan tim

---

**Yang butuh bantuan? Create issue atau discussion di repository!**

Made with ❤️ by TUS Network Dev Team
