
all:
	docker build -t liujie/test:latest .

run:
	docker run -it -P --privileged --name test liujie/test

start:
	docker run -it -d -P --privileged --name test liujie/test

stop:
	docker stop test
	docker rm test

clean:
	docker rmi liujie/test

view:
	docker exec -it test /bin/bash

save:
	docker commit -m 'null' -a 'liujie <liujie.m@me.com>' test liujie/test

push:
	docker push liujie/test:latest

pull:
	docker pull liujie/test:latest

