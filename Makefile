NAME:=hayabusa

build:
	@sudo docker build . -t ${NAME}

run:
	@sudo docker run -it --name ${NAME} -p '8080:8080' ${NAME} go run server.go

ckill:
	@sudo docker container prune

ikill:
	@sudo docker image prune

kill:
	@make ckill && make ikill

ps:
	@sudo docker ps -a

img:
	@sudo docker images

gmd:
	@go mod download

curl:
	@curl -kL 'localhost:8080' -o /dev/null -w "%{time_total}" 2> /dev/null && echo ''