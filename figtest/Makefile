
all:
	docker build -t liujie/ubuntu:latest .

run:
	docker run -it -P --name ubuntu liujie/ubuntu
	#docker run -it -P --privileged --name ubuntu liujie/ubuntu
	#docker run -it --name ubuntu1 --link ubuntu:srv0 liujie/ubuntu
	#docker run -d -p 127.0.0.1:80:5000/udp training/webapp python app.py

start:
	docker-compose -f fig.yml up
	#docker run -it -P -d --name ubuntu liujie/ubuntu
	#docker run -it -P -d --privileged --name ubuntu liujie/ubuntu

stop:
	docker stop ubuntu
	docker rm ubuntu

clean:
	docker rmi liujie/ubuntu

view:
	docker exec -it ubuntu /bin/bash

save:
	docker commit -m 'null' -a 'liujie <liujie.m@me.com>' ubuntu liujie/ubuntu

push:
	docker push liujie/ubuntu:latest

pull:
	docker pull liujie/ubuntu:latest

