FROM php:8.2-apache

# Set locale and timezone support
RUN apt-get update && apt-get install -y locales tzdata && \
    echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libzip-dev \
    libicu-dev \
    libonig-dev \
    libxml2-dev \
    libwebp-dev \
    git \
    curl \
    gnupg \
    default-mysql-client \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Install Node.js and npm
RUN apt-get update && apt-get install -y nodejs npm \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp \
    && docker-php-ext-install -j$(nproc) \
    gd \
    pdo_mysql \
    mysqli \
    zip \
    intl \
    bcmath \
    exif \
    mbstring

# Enable Apache modules
RUN a2enmod rewrite headers expires

# PHP configuration
RUN echo "upload_max_filesize = 64M" > /usr/local/etc/php/conf.d/uploads.ini \
    && echo "post_max_size = 64M" >> /usr/local/etc/php/conf.d/uploads.ini \
    && echo "memory_limit = 512M" >> /usr/local/etc/php/conf.d/uploads.ini

# Set working directory & timezone
ENV TZ=UTC
WORKDIR /var/www/html

# Security hardening
RUN echo "expose_php = Off" > /usr/local/etc/php/conf.d/security.ini \
    && echo "disable_functions = exec,passthru,shell_exec,system,proc_open,popen,curl_exec,curl_multi_exec,parse_ini_file,show_source" >> /usr/local/etc/php/conf.d/security.ini

# Install composer dependencies (Commented out to speed up build)
# COPY app/composer.* ./
# RUN composer install --no-interaction --prefer-dist --optimize-autoloader --ignore-platform-reqs

# Install node dependencies (Commented out to speed up build)
# COPY app/package*.json ./
# RUN npm install

# Copy application files
COPY app/ ./

# Fix permissions (Commented out because storage is ignored in .dockerignore)
# RUN chmod -R 755 storage bootstrap/cache

# Expose port
EXPOSE 80

# Start Laravel
CMD ["php", "-S", "0.0.0.0:80", "-t", "public"]
