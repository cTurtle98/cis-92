# 04-01-private-repo

notes for:
https://www.lifealgorithmic.com/cis-92/labs/04-01-private-repo.html

set compute region to oregon
```
gcloud config set compute/region us-west1
```

set compute zone to oregon c
```
gcloud config set compute/zone us-west1-c
```

set artifacts region to oregon
```
gcloud config set artifacts/location us-west1
```

create cis-92 docker repo
```
gcloud artifacts repositories create cis-92 --repository-format=docker
```

configure docker auth
```
gcloud auth configure-docker us-west1-docker.pkg.dev
```

Docker repo is: 
```
us-west1-docker.pkg.dev/cis-92-spring-2022-ciaran/cis-92
```

configure firewall for http traffic
```
$ gcloud compute firewall-rules create allow-http --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=tcp:80 --source-ranges=0.0.0.0/0 --target-tags=http-server
```