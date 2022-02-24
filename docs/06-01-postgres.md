# 06-01-postgres

https://www.lifealgorithmic.com/cis-92/labs/06-01-postgres.html

make the docker network
```
docker network create django
```

add django container to django network
```
docker network connect django django
```

start postgres
```
docker run \
-d \
--name postgres \
--network django \
-e POSTGRES_PASSWORD=django \
-e POSTGRES_DB=mysite \
postgres:14.1
```