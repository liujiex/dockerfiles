
FROM ubuntu:latest
MAINTAINER liujie "liujie.m@me.com"

RUN apt-get update
RUN apt-get install -y distcc gcc g++
RUN ln -s /usr/bin/gcc /usr/bin/x86_64-pc-linux-gnu-gcc
RUN ln -s /usr/bin/g++ /usr/bin/x86_64-pc-linux-gnu-g++

ADD distcc /etc/default/distcc
ADD main /root/main

RUN update-rc.d distcc enable 2
RUN update-rc.d distcc enable 3

EXPOSE 3632

USER root
WORKDIR /root
CMD /root/main

