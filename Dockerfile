FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y install apache2
RUN echo 'Docker image on GCP RUN <br>' > /var/www/html/index.html
RUN echo '<b><font color="magenta">Version 1.0</font></b>' >> /var/www/html/index.html


EXPOSE 80
CMD ["/usr/bin/apache2ctl","-D","FPREGROUND"]
