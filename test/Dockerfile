
FROM ubuntu:latest
MAINTAINER liujie "liujie.m@me.com"

RUN dpkg --add-architecture i386
RUN apt-get update
RUN apt-get install --no-install-recommends --assume-yes wine
ENV DISPLAY :0

#RUN apt-get update
RUN apt-get install -y python openssh-server
RUN useradd liujie
RUN echo "liujie ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/liujie
RUN mkdir -p /home/liujie/.ssh

ADD main /home/liujie/main
ADD ipforward /home/liujie/ipforward
ADD .ssh /home/liujie/.ssh

RUN chown -R liujie:liujie /home/liujie/.ssh
RUN chmod 700 /home/liujie/.ssh
RUN chmod 600 /home/liujie/.ssh/*

ADD jhPrimeminer /home/liujie/jhPrimeminer
ADD start.miner /home/liujie/start.miner
ADD stop.miner /home/liujie/stop.miner
RUN chown -R liujie:liujie /home/liujie

EXPOSE 8080

USER liujie
WORKDIR /home/liujie
#CMD /bin/bash
ENTRYPOINT /home/liujie/main

