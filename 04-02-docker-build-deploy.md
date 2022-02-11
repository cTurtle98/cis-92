# 04-02-docker-build-deploy

notes for:
https://www.lifealgorithmic.com/cis-92/labs/04-02-docker-build-deploy.html

Dockerfile
```
FROM docker.io/httpd

COPY index.html /urs/local/apache2/htdocs/index.html
```

index.html
```
ciaran was ere
```

build the docker image
```
docker build -t hello-http .
```

test the image runs
```
docker run -i --rm -p 8080:80 hello-http
```

tag the image for private repo instead of dockerhub default
```
docker tag hello-http us-west1-docker.pkg.dev/cis-92-spring-2022-ciaran/cis-92/hello-http
```

push the container up to repo
```
docker push us-west1-docker.pkg.dev/cis-92-spring-2022-ciaran/cis-92/hello-http
```

deploy a compute engine vm with docker pre-installed
```
gcloud compute instances create-with-container hello-http --machine-type=e2-micro --container-image=us-west1-docker.pkg.dev/cis-92-spring-2022-ciaran/cis-92/hello-http --tags=http-server
```

delete the vm after testing
```
gcloud compute instances delete hello-http
```