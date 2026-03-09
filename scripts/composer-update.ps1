#!/usr/bin/env pwsh

# Laravel Composer Upgrade Script
# Updates all dependencies to latest versions

Write-Host "🚀 Starting Composer Dependency Upgrade..." -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

cd "e:\THOLIB\wordpress\invoice.rizquna.id\app"

# Create backup of current composer.lock
Write-Host "`n📦 Backing up current composer.lock..." -ForegroundColor Yellow
if (Test-Path "composer.lock") {
    Copy-Item "composer.lock" "composer.lock.backup.$(Get-Date -Format 'yyyyMMdd_HHmmss')" -Force
    Write-Host "✅ Backup created" -ForegroundColor Green
}

# Update composer itself
Write-Host "`n🔄 Updating Composer..." -ForegroundColor Yellow
composer self-update

# Update all dependencies
Write-Host "`n📚 Updating Laravel and dependencies..." -ForegroundColor Yellow
composer update --no-interaction

# Dump autoloader
Write-Host "`n🔧 Optimizing autoloader..." -ForegroundColor Yellow
composer dump-autoload --optimize

# Update Laravel framework
Write-Host "`n📦 Checking Laravel specific packages..." -ForegroundColor Yellow
composer require laravel/framework:^11.0 --no-interaction 2>&1 | Out-Null || Write-Host "Framework already at latest version"

# Update Laravel Vapor (optional)
Write-Host "`n✅ Dependency update complete!" -ForegroundColor Green
Write-Host "Run: docker-compose up -d --build" -ForegroundColor Cyan
