FROM ubuntu:latest

ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get -y update
RUN apt-get -y install apache2
RUN echo 'Docker image on GCP RUN <br>' > /var/www/html/index.html
RUN echo '<b><font color="magenta">Version 1.0</font></b>' >> /var/www/html/index.html
RUN echo `date` >> /var/www/html/index.html

EXPOSE 80
CMD CMD /usr/sbin/apache2ctl -D FOREGROUND
