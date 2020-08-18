# nginx_unit_laravel

It's a test that apply nginx unit for develop laravel app

## How To Getting Started

```bash
git submodule update --remote
docker-compose up -d
```

and wait for a moment to start app, also can check log once the line "laravel application started" is display

```bash
docker-compose logs -f laravel
```

if it is first time run, please execute below commands:

```bash
docker-compose exec laravel cp .env.example .env
docker-compose exec laravel php artisan key:generate
```
