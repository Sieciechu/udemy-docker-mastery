FROM drupal:8.2

RUN apt-get update && apt-get install -y git && \
    rm -rf /var/lib/apt/lists/* && \
    git clone --branch 8.x-3.x --single-branch --depth 1 https://git.drupal.org/project/bootstrap.git /var/www/html/themes/bootstrap && \
    chown -R www-data:www-data /var/www/html/themes/bootstrap

WORKDIR /var/www/html