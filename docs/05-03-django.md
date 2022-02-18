# 05-03-django

docker run command

```
docker run \
-t \
-p 8000:8000 \
--name django  \
-e DJANGO_ADMIN_EMAIL=admin@example.com \
-e DJANGO_ADMIN_USERNAME=admin \
-e DJANGO_SUPERUSER_PASSWORD=badpassword \
ghcr.io/cturtle98/cis-92:main
```