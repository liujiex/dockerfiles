
all:
	docker build -t liujie/distcc:latest .

run:
	docker run -it -p :3632:3632 --name distcc liujie/distcc
	#docker run -it -P --privileged --name distcc liujie/distcc
	#docker run -it --name distcc1 --link distcc:srv0 liujie/distcc
	#docker run -d -p 127.0.0.1:80:5000/udp training/webapp python app.py

start:
	docker run -it -p :3632:3632 -d --name distcc liujie/distcc
	#docker run -it -P -d --privileged --name distcc liujie/distcc

stop:
	docker stop distcc
	docker rm distcc

clean:
	docker rmi liujie/distcc

view:
	docker exec -it distcc /bin/bash

save:
	docker commit -m 'null' -a 'liujie <liujie.m@me.com>' distcc liujie/distcc

push:
	docker push liujie/distcc:latest

pull:
	docker pull liujie/distcc:latest

