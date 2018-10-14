#
# Create Docker Container
#
FROM ubuntu:latest
MAINTAINER Geeth Chowdary "geeth@geethsoft.com"
#Install some essential softwares for ubuntu container
RUN apt update
RUN apt install curl vim sudo wget software-properties-common ssh apt-transport-https -y

#install apache2
RUN apt install apache2 -y

RUN apt install git -y
RUN cd /var/www/html && git clone https://github.com/gmchowdary/msr-test-html.git
ADD 000-default.conf /etc/apache2/sites-available/000-default.conf

#Start services
CMD service apache2 start && service ssh start && tail -f /var/log/apache2/error.log

WORKDIR /root
