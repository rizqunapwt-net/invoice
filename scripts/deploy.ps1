#!/usr/bin/env pwsh

# Deploy script for Invoice.Rizquna.id Laravel project
# Usage: .\scripts\deploy.ps1

Write-Host "🚀 Invoice.Rizquna.id - Deployment Script" -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan

# Check if containers exist
$dbRunning = docker ps | Select-String "invoice_db"
$appRunning = docker ps | Select-String "invoice_app"

if (-not $dbRunning -or -not $appRunning) {
    Write-Host "⚠️  Containers not running. Starting..." -ForegroundColor Yellow
    docker-compose up -d
    Start-Sleep -Seconds 8
}

# Backup database
Write-Host "💾 Creating database backup..." -ForegroundColor Yellow
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
$backupDir = "data/backups"

if (-not (Test-Path $backupDir)) {
    New-Item -ItemType Directory -Path $backupDir -Force | Out-Null
}

docker-compose exec -T db-invoice mysqldump -u u9443309_invoice -pinvoice_password u9443309_invoice | Out-File "$backupDir/invoice_backup_$timestamp.sql"
Write-Host "✅ Backup created: $backupDir/invoice_backup_$timestamp.sql" -ForegroundColor Green

# Clear Laravel cache
Write-Host "🧹 Clearing Laravel caches..." -ForegroundColor Yellow
docker-compose exec -T app-invoice php artisan cache:clear 2>&1 | Out-Null
docker-compose exec -T app-invoice php artisan config:clear 2>&1 | Out-Null
docker-compose exec -T app-invoice php artisan view:clear 2>&1 | Out-Null
Write-Host "✅ Caches cleared" -ForegroundColor Green

# Pull latest code (if git repo)
if (Test-Path ".git") {
    Write-Host "📦 Pulling latest code..." -ForegroundColor Yellow
    git pull origin main 2>&1 | Out-Null
    Write-Host "✅ Code updated" -ForegroundColor Green
    
    # Run migrations
    Write-Host "🗄️  Running database migrations..." -ForegroundColor Yellow
    docker-compose exec -T app-invoice php artisan migrate --force 2>&1 | Out-Null
    Write-Host "✅ Migrations completed" -ForegroundColor Green
}

# Restart containers with latest code
Write-Host "🔄 Restarting containers..." -ForegroundColor Yellow
docker-compose down
docker-compose up -d

Write-Host "⏳ Waiting for services to start..." -ForegroundColor Yellow
Start-Sleep -Seconds 8

Write-Host ""
Write-Host "✅ Deployment Complete!" -ForegroundColor Green
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "Website: http://localhost:8089" -ForegroundColor Cyan
Write-Host ""
