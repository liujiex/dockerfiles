
FROM ubuntu:20.04
LABEL maintainer.name="liujie"
LABEL maintainer.email="liujie.x@live.cn"

ADD sources.list /etc/apt/sources.list.cn

RUN apt-get update -y
RUN apt-get upgrade -y
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y tzdata

RUN apt-get install -y nano sudo cron openssh-server

RUN apt-get clean autoclean
RUN apt-get autoremove --yes
RUN rm -rf /var/lib/apt/*
RUN rm -rf /var/lib/cache/*
RUN rm -rf /var/lib/log/*

RUN useradd -m -s /bin/bash liujie
RUN echo "liujie ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/liujie
RUN chmod 600 /etc/sudoers.d/liujie

ADD .ssh /home/liujie/.ssh
RUN chmod 700 /home/liujie/.ssh
RUN chmod 600 /home/liujie/.ssh/*
RUN chown -R liujie:liujie /home/liujie/.ssh

ADD bin /home/liujie/bin
RUN chown -R liujie:liujie /home/liujie/bin
ADD cron.seconds /home/liujie/cron.seconds
ADD cron.tab /home/liujie/cron.tab
ADD main /home/liujie/main
RUN chown liujie:liujie /home/liujie/cron.tab /home/liujie/cron.seconds /home/liujie/main


EXPOSE 22

USER liujie
WORKDIR /home/liujie
CMD /bin/bash
#ENTRYPOINT /home/liujie/main
