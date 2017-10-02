
all:
	docker build -t liujie/pytest:1.0 .

start:
	docker stack deploy -c fig.yml pytest
	#docker-compose -f fig.yml up

stop:
	docker stack rm pytest

clean:
	docker rmi liujie/pytest:1.0

view:
	docker stack ps pytest
	docker stack services pytest

push:
	docker push liujie/pytest:1.0

pull:
	docker pull liujie/pytest:1.0

