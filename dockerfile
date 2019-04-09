FROM ubuntu:latest

RUN apt-get update
RUN apt install apache2 -y
CMD /usr/sbin/apache2ctl -D FOREGROUND

COPY ./index.html /var/www/html/index.html
