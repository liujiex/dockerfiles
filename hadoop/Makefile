
all:
	docker build -t liujie/hadoop:latest .

run:
	docker run -it -P --name hadoop liujie/hadoop
	#docker run -it -P --privileged --name hadoop liujie/hadoop
	#docker run -it --name hadoop1 --link hadoop:srv0 liujie/hadoop
	#docker run -d -p 127.0.0.1:80:5000/udp training/webapp python app.py

start:
	docker run -it -P -d --name hadoop liujie/hadoop
	#docker run -it -P -d --privileged --name hadoop liujie/hadoop

stop:
	docker stop hadoop
	docker rm hadoop

clean:
	docker rmi liujie/hadoop

view:
	docker exec -it hadoop /bin/bash

save:
	docker commit -m 'null' -a 'liujie <liujie.m@me.com>' hadoop liujie/hadoop

push:
	docker push liujie/hadoop:latest

pull:
	docker pull liujie/hadoop:latest

