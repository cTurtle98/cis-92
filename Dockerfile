FROM docker.io/ubuntu:20.04

RUN apt update
RUN apt install -y python3-pip

COPY app/ /app