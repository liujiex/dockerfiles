IMG_NAME=liujie/ubuntu
#TAG=lasted
#TAG=1.0
TAG=2.0
RUN_NAME=ubuntu.x
SAVE_NAME=liujie.ubuntu

all:
	docker build -t $(IMG_NAME):$(TAG) .

run:
	docker run -it -P --rm --name $(RUN_NAME) $(IMG_NAME):$(TAG)

start:
	docker run -it -P -d --name $(RUN_NAME) $(IMG_NAME):$(TAG)

stop:
	docker stop $(RUN_NAME)
	docker rm $(RUN_NAME)

clean:
	docker rmi $(IMG_NAME):$(TAG)

view:
	docker exec -it $(RUN_NAME) /bin/bash

commit:
	docker commit -a 'liujie <liujie.x@live.cn>' $(RUN_NAME) $(IMG_NAME):$(TAG)

save:
	docker save $(IMG_NAME):$(TAG) > $(SAVE_NAME)_$(TAG).img

load:
	docker load < $(SAVE_NAME)_$(TAG).img

push:
	docker push $(IMG_NAME):$(TAG)

pull:
	docker pull $(IMG_NAME):$(TAG)

