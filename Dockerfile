FROM docker.io/ubuntu:20.04

# apt stuff
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt install -y python3-pip tzdata

# pip stuff
RUN alias python=python3
RUN python3 -m pip install django 

# copy source code
COPY app/ /app
WORKDIR /app/mysite/

# start django server
ENTRYPOINT ["bash"]
CMD ["-c", "entrypoint.sh"]