FROM ubuntu:latest
RUN apt-get update &&  apt-get install -y apache2

#RUN apt-get install -y apache2

COPY parameterised_website/ /var/www/html/

EXPOSE 80
EXPOSE 443

CMD apachectl -D FOREGROUND