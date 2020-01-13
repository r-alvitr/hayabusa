NAME:=sekirei

build:
	sudo docker build . -t ${NAME}

pbuild:
	sudo docker build . -t ${NAME} --build-arg http_proxy=http://172.20.20.104:8080 --build-arg https_proxy=http://172.20.20.104:8080

run:
	sudo docker run -it --name ${NAME} -p '80:80' ${NAME} /bin/bash

ckill:
	sudo docker container prune

ikill:
	sudo docker image prune

kill:
	make ckill && make ikill

ps:
	sudo docker ps -a

img:
	sudo docker images
