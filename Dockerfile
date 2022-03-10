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

ENV DB_NAME=""
ENV DB_USER=""
ENV DB_PASSWORD = ""
ENV DB_HOST=""

# start django server
ENTRYPOINT ["bash"]
CMD ["-c", "./entrypoint.sh"]