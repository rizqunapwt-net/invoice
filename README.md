# Invoice.Rizquna.id - Laravel Project

## 📋 Overview
Invoice.Rizquna.id is a Laravel-based invoice system running on Docker with PHP 8.2, Apache, and MariaDB.

## 📁 Project Structure
```
invoice.rizquna.id/
├── app/                    # Laravel application
│   ├── app/                # Application logic (models, controllers, etc.)
│   ├── config/             # Configuration files
│   ├── database/           # Migrations & seeds
│   ├── resources/          # Views, JS, CSS
│   ├── routes/             # API & web routes
│   ├── storage/            # Uploaded files, logs
│   ├── public/             # Web root
│   ├── .env.example        # Environment template
│   └── artisan             # Laravel CLI
├── data/
│   ├── db/                 # Database initialization files
│   ├── storage/            # Persistent application storage
│   └── backups/            # Database backups
├── config/                 # Docker config (optional)
├── scripts/
│   ├── setup.ps1           # Initial setup script
│   └── deploy.ps1          # Deployment script
├── docker-compose.yml      # Docker Compose configuration
├── Dockerfile              # Docker image definition
├── .env.example            # Root environment (optional)
└── .gitignore              # Git ignore rules
```

## 🚀 Getting Started

### Prerequisites
- Docker Desktop installed
- 4GB+ RAM available
- Port 8089 and 33069 available
- Git (optional)

### Initial Setup
```powershell
# Run setup script
.\scripts\setup.ps1
```

This will:
1. Create `.env` file from `.env.example`
2. Create required directories
3. Build Docker images
4. Start containers
5. Run database migrations
6. Generate Laravel APP_KEY (if needed)

### Access Running Application
- **Invoice App**: http://localhost:8089
- **Database**: localhost:33069
- **Database Name**: u9443309_invoice
- **Database User**: u9443309_invoice
- **Database Password**: invoice_password

## 📦 Docker Services

### Database (MariaDB 10.11)
- Container: `invoice_db`
- Port: 33069
- Database: u9443309_invoice
- Includes health checks

### Application (PHP 8.2 + Apache)
- Container: `invoice_app`
- Port: 8089
- Document Root: /var/www/html/public

## 🔧 Common Commands

### View running containers
```powershell
docker-compose ps
```

### View logs
```powershell
docker-compose logs -f
docker-compose logs app-invoice  # App logs only
docker-compose logs db-invoice   # DB logs only
```

### Stop containers
```powershell
docker-compose down
```

### Restart services
```powershell
docker-compose restart
```

### Execute Laravel Artisan command
```powershell
docker-compose exec app-invoice php artisan <command>
```

### Generate APP_KEY
```powershell
docker-compose exec app-invoice php artisan key:generate
```

### Run migrations
```powershell
docker-compose exec app-invoice php artisan migrate
```

### Database backup
```powershell
docker-compose exec -T db-invoice mysqldump -u u9443309_invoice -pinvoice_password u9443309_invoice > backup.sql
```

### Database restore
```powershell
docker-compose exec -T db-invoice mysql -u u9443309_invoice -pinvoice_password u9443309_invoice < backup.sql
```

### Clear caches
```powershell
docker-compose exec app-invoice php artisan cache:clear
docker-compose exec app-invoice php artisan config:clear
docker-compose exec app-invoice php artisan view:clear
```

## 🚀 Deployment

### Using deployment script
```powershell
.\scripts\deploy.ps1
```

This will:
1. Create database backup
2. Clear Laravel caches
3. Pull latest code (if Git repo)
4. Run migrations
5. Restart containers

### Manual deployment
```powershell
# Build and start
docker-compose up -d --build

# Run migrations
docker-compose exec app-invoice php artisan migrate

# View status
docker-compose ps

# Check logs
docker-compose logs -f
```

## ⚙️ Configuration

### Environment Variables
Located in `app/.env`:
```powershell
cp app/.env.example app/.env
```

Key variables:
- `APP_KEY`: Laravel encryption key (generate with artisan)
- `APP_ENV`: development, production, testing
- `APP_DEBUG`: true/false
- `APP_URL`: Application URL
- `DB_HOST`: Database host (use 'db-invoice' for Docker)
- `DB_DATABASE`: Database name
- `DB_USERNAME`: Database user
- `DB_PASSWORD`: Database password

### Storage Permissions
If you get permission errors:
```powershell
docker-compose exec app-invoice chmod -R 775 storage bootstrap/cache
docker-compose exec app-invoice chown -R www-data:www-data storage bootstrap/cache
```

## 🔒 Security Tips for Production

1. **Change Database Credentials**
   - Update `DB_PASSWORD` in `app/.env`
   - Update `docker-compose.yml`

2. **Generate New APP_KEY**
   ```powershell
   docker-compose exec app-invoice php artisan key:generate
   ```

3. **Enable HTTPS**
   - Get SSL certificate (Let's Encrypt)
   - Update Apache/Nginx configuration

4. **Set correct APP_URL**
   - Use production domain in `app/.env`

5. **Disable Debug Mode**
   - Set `APP_DEBUG=false` in `app/.env`

6. **Regular Backups**
   - Use `./scripts/deploy.ps1` for automated backups
   - Store backups securely

7. **Update Composer & NPM**
   - Keep packages updated
   - Run security checks regularly

## 🐛 Troubleshooting

### Laravel not responding
```powershell
docker-compose logs app-invoice
```

### APP_KEY not set error
```powershell
docker-compose exec app-invoice php artisan key:generate
```

### Database connection error
```powershell
# Check if db container is running
docker-compose ps

# Check DB logs
docker-compose logs db-invoice

# Verify .env credentials
cat app/.env | grep DB_
```

### Permission denied errors
```powershell
docker-compose exec app-invoice chmod -R 755 storage
docker-compose exec app-invoice chown -R www-data:www-data storage
```

### Container port already in use
```powershell
# Change port in docker-compose.yml
# Or kill process using the port
```

## 📝 Migrations & Seeding

### Create new migration
```powershell
docker-compose exec app-invoice php artisan make:migration <name>
```

### Run migrations
```powershell
docker-compose exec app-invoice php artisan migrate
```

### Rollback migrations
```powershell
docker-compose exec app-invoice php artisan migrate:rollback
```

### Seed database
```powershell
docker-compose exec app-invoice php artisan db:seed
```

## 📝 License
Internal project for invoice.rizquna.id

## 👥 Support
Contact: [Your contact info]
