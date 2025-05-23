FROM ubuntu:24.04

RUN apt update && apt install -y apache2 curl && apt clean && rm -rf /var/lib/apt/lists/*

ENV DEBIAN_FRONTEND=noninteractive

COPY html/ /var/www/html

RUN date > /var/www/html/buildtime.txt

WORKDIR /var/www/html

EXPOSE 80/tcp

 CMD ["apachectl", "-D", "FOREGROUND"]

