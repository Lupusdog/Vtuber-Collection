# PHP 8.2-FPM の公式イメージを使用
FROM php:8.2-fpm

# 必要なパッケージをインストールし、PDO を有効化
RUN apt-get update && apt-get install -y \
    libzip-dev \
    unzip \
    git \
    curl \
    default-mysql-client \
    && docker-php-ext-install pdo_mysql

# 作業ディレクトリを設定
WORKDIR /var/www/html

# 必要に応じて権限を設定
RUN chown -R www-data:www-data /var/www/html

# PHP-FPM をデフォルトで起動
CMD ["php-fpm"]
