FROM nginx/unit:1.18.0-php7.3

ENV DEBIAN_FRONTEND noninteractive

WORKDIR /app

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN apt-get update && \
    apt-get install -y php7.3-bcmath php7.3-curl php7.3-mbstring php7.3-xml php7.3-zip php7.3-mysql git unzip 

VOLUME ["/app", "/docker-entrypoint.d/"]

EXPOSE 80

ENTRYPOINT composer install; /usr/local/bin/docker-entrypoint.sh unitd --no-daemon --control unix:/var/run/control.unit.sock