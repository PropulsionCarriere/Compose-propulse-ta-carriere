FROM docker.pkg.github.com/propulsioncarriere/propulsetacarriere/app:latest

ARG UID
ARG GID

WORKDIR /var/www
COPY .env .env

RUN apk --no-cache add shadow
RUN usermod -u $UID www-data
RUN groupmod -g $GID www-data

RUN chown -R www-data:www-data \
        /var/www/storage \
        /var/www/bootstrap/cache
RUN chmod -R 775 \
		/var/www/storage \
        /var/www/bootstrap/cache

RUN php artisan config:cache