
all:
	docker build -t liujie/ubuntu:1.0 .

run:
	docker run -it -P --rm --name ubuntu.x liujie/ubuntu:1.0

start:
	docker run -it -P -d --name ubuntu.x liujie/ubuntu:1.0

stop:
	docker stop ubuntu.x
	docker rm ubuntu.x

clean:
	docker rmi liujie/ubuntu:1.0

view:
	docker exec -it ubuntu.x /bin/bash

commit:
	docker commit -m 'null' -a 'liujie <liujie.x@live.cn>' ubuntu.x liujie/ubuntu:1.0

save:
	docker save liujie/ubuntu:1.0 > ubuntu.x_img.tar

load:
	docker load < ubuntu.x_img.tar

push:
	docker push liujie/ubuntu:1.0

pull:
	docker pull liujie/ubuntu:1.0

