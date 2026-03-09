#!/usr/bin/env pwsh

# Setup script for Invoice.Rizquna.id Laravel project
# Usage: .\scripts\setup.ps1

Write-Host "🚀 Invoice.Rizquna.id - Laravel Setup" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan

# Check if .env file exists
if (-not (Test-Path "app\.env")) {
    Write-Host "📋 Creating .env file from .env.example..." -ForegroundColor Yellow
    if (Test-Path "app\.env.example") {
        Copy-Item "app\.env.example" "app\.env"
        Write-Host "✅ .env file created" -ForegroundColor Green
    }
} else {
    Write-Host "ℹ️  .env file already exists" -ForegroundColor Cyan
}

# Create required directories
Write-Host "📁 Creating required directories..." -ForegroundColor Yellow
@("data/db", "data/storage", "logs") | ForEach-Object {
    if (-not (Test-Path $_)) {
        New-Item -ItemType Directory -Path $_ -Force | Out-Null
        Write-Host "✅ Created $_" -ForegroundColor Green
    }
}

# Check Docker
Write-Host "🐳 Checking Docker..." -ForegroundColor Yellow
try {
    $dockerVersion = docker --version
    Write-Host "✅ Docker found: $dockerVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Docker not found. Please install Docker first." -ForegroundColor Red
    exit 1
}

# Build and start containers
Write-Host "🔨 Building Docker images..." -ForegroundColor Yellow
docker-compose build

Write-Host "▶️  Starting containers..." -ForegroundColor Yellow
docker-compose up -d

# Wait for services to be ready
Write-Host "⏳ Waiting for services to start..." -ForegroundColor Yellow
Start-Sleep -Seconds 8

# Check if containers are running
$dbRunning = docker ps | Select-String "invoice_db"
$appRunning = docker ps | Select-String "invoice_app"

if ($dbRunning -and $appRunning) {
    Write-Host "✅ All containers running!" -ForegroundColor Green
    
    # Run Laravel migrations
    Write-Host "🗄️  Running database migrations..." -ForegroundColor Yellow
    docker-compose exec -T app-invoice php artisan migrate --force 2>&1 | Out-Null
    Write-Host "✅ Migrations completed" -ForegroundColor Green
    
} else {
    Write-Host "⚠️  Some containers may not be running yet. Check logs:" -ForegroundColor Yellow
    Write-Host "  docker-compose logs" -ForegroundColor White
}

Write-Host ""
Write-Host "🎉 Setup Complete!" -ForegroundColor Green
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "Invoice App URL: http://localhost:8089" -ForegroundColor Cyan
Write-Host "Database Host: localhost:33069" -ForegroundColor Cyan
Write-Host "Database Name: u9443309_invoice" -ForegroundColor Cyan
Write-Host "Database User: u9443309_invoice" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "  1. Check app/.env configuration" -ForegroundColor White
Write-Host "  2. Generate APP_KEY: docker-compose exec app php artisan key:generate" -ForegroundColor White
Write-Host "  3. Visit: http://localhost:8089" -ForegroundColor White
Write-Host ""
