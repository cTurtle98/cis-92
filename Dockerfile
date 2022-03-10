FROM docker.io/ubuntu:20.04

# apt stuff
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install -y python3-pip tzdata postgresql-client

# pip stuff
RUN alias python=python3
RUN python3 -m pip install django psycopg2-binary

# copy source code
COPY app/ /app
WORKDIR /app/mysite/
RUN chmod +x entrypoint.sh

EXPOSE 8000

# postgres or sqlite
ENV DB_ENGINE="sqlite"
# if postgres below needs to be set
ENV DB_NAME="mysite"
ENV DB_USER="django"
ENV DB_PASSWORD = "BadPassword"
ENV DB_HOST="postgres"

# data in volume
ENV BASE_DIR="/var/db"
RUN mkdir /var/db
VOLUME /var/db

# start django server
ENTRYPOINT ["bash"]
CMD ["-c", "./entrypoint.sh"]