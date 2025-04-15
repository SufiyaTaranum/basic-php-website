FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY . /var/www/html/

EXPOSE 80

ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

