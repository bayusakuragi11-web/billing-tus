# 🤝 Contributing to Billing TUS Network

Terima kasih telah tertarik untuk berkontribusi! Berikut panduan untuk berkontribusi ke project ini.

## 📋 Code of Conduct

Kami berkomitmen untuk memberikan lingkungan yang ramah dan inklusif untuk semua kontributor.

- Bersikap menghormati kepada orang lain
- Terima kritik dengan konstruktif
- Fokus pada apa yang terbaik untuk komunitas
- Tunjukkan empati kepada anggota komunitas lain

## 🚀 Getting Started

### 1. Fork Repository
Klik tombol "Fork" di halaman repository untuk membuat salinan di akun Anda.

### 2. Clone Repository
```bash
git clone https://github.com/your-username/billing-tus-network.git
cd billing-tus-network
```

### 3. Add Upstream Remote
```bash
git remote add upstream https://github.com/original-owner/billing-tus-network.git
```

### 4. Create Feature Branch
```bash
git checkout -b feature/your-feature-name
# atau untuk bug fix:
git checkout -b fix/bug-name
```

### 5. Setup Development Environment
```bash
npm install
npm start
```

## 📝 Making Changes

### Code Style
- Gunakan 2 spaces untuk indentation
- Gunakan camelCase untuk variable names
- Gunakan UPPER_CASE untuk constants
- Tambahkan comments untuk kode yang kompleks
- Maksimal 100 characters per line

### Commit Messages
Gunakan format Conventional Commits:

```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat`: Fitur baru
- `fix`: Bug fix
- `docs`: Documentation
- `style`: Code style (formatting, semicolons, dll)
- `refactor`: Refactoring code
- `perf`: Performance improvements
- `test`: Tests
- `chore`: Build, dependencies, dll

**Examples:**
```
feat(customers): add bulk import feature
fix(dashboard): resolve chart rendering issue
docs(readme): update installation instructions
style(css): format custom stylesheet
```

## 🧪 Testing

Sebelum submit PR, pastikan:

1. **Buka halaman di browser** untuk visual check
2. **Test di berbagai ukuran screen** (mobile, tablet, desktop)
3. **Test di berbagai browser** (Chrome, Firefox, Safari, Edge)
4. **Check console** untuk errors atau warnings
5. **Validasi HTML** (jika mengubah HTML)

## 📤 Submitting Changes

### 1. Push ke Fork Anda
```bash
git push origin feature/your-feature-name
```

### 2. Create Pull Request
- Buka GitHub dan navigasi ke fork Anda
- Klik "New Pull Request"
- Set base repository ke `original-owner/billing-tus-network` (main branch)
- Isi pull request template dengan detail

### 3. PR Description Template
```markdown
## Description
Jelaskan perubahan Anda dengan singkat dan jelas.

## Type of Change
- [ ] Bug fix (non-breaking)
- [ ] New feature (non-breaking)
- [ ] Breaking change
- [ ] Documentation update

## Related Issue
Closes #(issue number)

## Testing
Jelaskan bagaimana Anda testing perubahan ini:
- [ ] Tested on desktop
- [ ] Tested on tablet
- [ ] Tested on mobile
- [ ] Tested on different browsers

## Checklist
- [ ] Code follows project style guidelines
- [ ] Self-review completed
- [ ] Comments added (if complex)
- [ ] HTML validated
- [ ] No console errors/warnings
```

## 🔍 Review Process

1. **Maintainer akan review** PR Anda dalam 1-7 hari
2. **Berikan feedback** dan request changes jika diperlukan
3. **Update PR** dengan suggested changes
4. **Rebase jika ada conflict** dengan main branch
5. **Merge** setelah approval

## 📚 Important Files

- `README.md` - Main documentation
- `GITHUB_DEPLOY_GUIDE.md` - Deployment guide
- `package.json` - Project configuration
- `server.js` - Server setup
- `billingtusnet.bayarinternet.com/` - Main application folder

## 🐛 Reporting Bugs

Jika menemukan bug:

1. **Check issues** untuk memastikan belum dilaporkan
2. **Create new issue** dengan template:
   - Deskripsi bug
   - Steps untuk reproduce
   - Expected behavior
   - Actual behavior
   - Screenshots (jika applicable)
   - Browser & OS info

## 💡 Suggesting Enhancements

Untuk enhancement/feature request:

1. **Gunakan "Discussions"** untuk ide awal
2. **Create issue** jika sudah consensus
3. **Jelaskan use case** dan expected behavior

## 📖 Documentation

Bantuan dokumentasi sangat dihargai!

- Update README jika ada fitur baru
- Tambahkan inline comments untuk kode kompleks
- Buat documentation untuk new features
- Perbaiki typos atau clarity issues

## 🎓 Learning Resources

- [GitHub Docs](https://docs.github.com)
- [Tabler Admin Template](https://tabler.io/)
- [Bootstrap 5 Documentation](https://getbootstrap.com/docs/5.0/)
- [Web Components Best Practices](https://www.webcomponents.org/articles)

## ❓ Questions?

- Tanya di GitHub Discussions
- Buat issue untuk clarification
- Hubungi maintainers langsung

## 📜 License

Dengan berkontribusi, Anda setuju bahwa kontribusi Anda akan dilisensikan di bawah MIT License yang sama dengan project ini.

---

**Thank you for contributing! 🙏**
