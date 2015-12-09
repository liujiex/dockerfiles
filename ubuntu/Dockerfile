
FROM ubuntu:latest
MAINTAINER liujie "liujie.m@me.com"

#RUN echo "root:123456" | chpasswd
RUN apt-get update
RUN apt-get install -y python openssh-server
RUN useradd liujie
RUN echo "liujie ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/liujie

ADD .ssh /home/liujie/.ssh
ADD main /home/liujie/main
ADD ipforward /home/liujie/ipforward

RUN chown -R liujie:liujie /home/liujie/.ssh
RUN chmod 700 /home/liujie/.ssh
RUN chmod 600 /home/liujie/.ssh/*

EXPOSE 8080
EXPOSE 22

USER liujie
WORKDIR /home/liujie
CMD /bin/bash
#ENTRYPOINT /home/liujie/main

