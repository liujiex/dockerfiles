
FROM ubuntu:16.04
MAINTAINER liujie "liujie.x@live.cn"

ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y sudo python openssh-server python-pip squid nano mongodb iputils-ping
RUN pip install -i https://pypi.douban.com/simple --upgrade pip
RUN pip install -i https://pypi.douban.com/simple --upgrade tushare threadpool bs4 lxml pandas requests pymongo psycopg2 tornado

RUN useradd liujie
RUN echo "liujie ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/liujie

ADD .ssh /home/liujie/.ssh
ADD cron.seconds /home/liujie/cron.seconds
ADD cron.tab /home/liujie/cron.tab
ADD pip.install /home/liujie/pip.install
ADD main /home/liujie/main

RUN chown -R liujie:liujie /home/liujie
RUN chmod 700 /home/liujie/.ssh
RUN chmod 600 /home/liujie/.ssh/*

EXPOSE 22

USER liujie
WORKDIR /home/liujie
CMD /bin/bash
#ENTRYPOINT /home/liujie/main

