#!/usr/bin/env pwsh

# NPM Upgrade Script
# Updates all Node dependencies to latest versions

Write-Host "🚀 Starting NPM Dependency Upgrade..." -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan

cd "e:\THOLIB\wordpress\invoice.rizquna.id\app"

# Create backup of package-lock.json
Write-Host "`n📦 Backing up current package-lock.json..." -ForegroundColor Yellow
if (Test-Path "package-lock.json") {
    Copy-Item "package-lock.json" "package-lock.json.backup.$(Get-Date -Format 'yyyyMMdd_HHmmss')" -Force
    Write-Host "✅ Backup created" -ForegroundColor Green
}

# Check npm version
Write-Host "`n🔄 Checking npm version..." -ForegroundColor Yellow
npm -v

# Update npm itself
Write-Host "`n🔄 Updating npm..." -ForegroundColor Yellow
npm install -g npm@latest

# List outdated packages
Write-Host "`n📊 Checking outdated packages..." -ForegroundColor Yellow
npm outdated --depth=0

# Update all packages
Write-Host "`n📚 Updating all packages..." -ForegroundColor Yellow
npm update --save

# Update dev dependencies
Write-Host "`n🛠️  Updating dev dependencies..." -ForegroundColor Yellow
npm update --save-dev

# Audit and fix vulnerabilities
Write-Host "`n🔒 Running security audit..." -ForegroundColor Yellow
npm audit fix --audit-level=moderate

# Build assets
Write-Host "`n🔨 Building assets..." -ForegroundColor Yellow
npm run build

Write-Host "`n✅ NPM update complete!" -ForegroundColor Green
