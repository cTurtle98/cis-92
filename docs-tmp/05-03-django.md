# 05-03-django

docker run command

```
docker run \
-d -t \
--name django \
--network django \
-p 8000:8000 \
-e DJANGO_ADMIN_EMAIL=admin@example.com \
-e DJANGO_ADMIN_USERNAME=admin \
-e DJANGO_SUPERUSER_PASSWORD=badpassword \
ghcr.io/cturtle98/cis-92:main
```