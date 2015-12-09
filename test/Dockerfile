
FROM ubuntu:latest
MAINTAINER liujie "liujie.m@me.com"

RUN apt-get update
RUN apt-get install -y python openssh-server openvpn dhcpcd5
RUN useradd liujie
RUN echo "liujie ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/liujie
RUN mkdir -p /home/liujie/.ssh

#ADD authorized_keys /home/liujie/.ssh/authorized_keys
ADD main /home/liujie/main
ADD ipforward /home/liujie/ipforward
ADD .ssh /home/liujie/.ssh
ADD vpn /home/liujie/vpn

RUN chown -R liujie:liujie /home/liujie/.ssh
RUN chmod 700 /home/liujie/.ssh
RUN chmod 600 /home/liujie/.ssh/*

EXPOSE 8080
EXPOSE 22
EXPOSE 80

USER liujie
WORKDIR /home/liujie
#CMD /bin/bash
ENTRYPOINT /home/liujie/main

