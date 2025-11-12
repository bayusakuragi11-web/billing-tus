#!/bin/bash

# Quick Setup Script untuk Billing TUS Network
# Jalankan: bash setup.sh (atau sh setup.sh)

echo "=================================="
echo "Billing TUS Network - Quick Setup"
echo "=================================="
echo ""

# Check Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js tidak terinstall"
    echo "📥 Download dari https://nodejs.org/"
    exit 1
fi

echo "✅ Node.js terinstall: $(node -v)"
echo "✅ NPM terinstall: $(npm -v)"
echo ""

# Check Git
if ! command -v git &> /dev/null; then
    echo "⚠️  Git tidak terinstall"
    echo "📥 Download dari https://git-scm.com/"
else
    echo "✅ Git terinstall: $(git --version)"
fi

echo ""
echo "📦 Installing dependencies..."
npm install

echo ""
echo "=================================="
echo "✨ Setup Complete!"
echo "=================================="
echo ""
echo "🚀 Start server dengan: npm start"
echo "📂 Atau buka di: http://localhost:8888"
echo ""
echo "📖 Dokumentasi: Baca README.md"
echo "🌐 Deploy ke GitHub: Baca GITHUB_DEPLOY_GUIDE.md"
echo ""
