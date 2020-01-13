NAME:=hayabusa

up:
	@docker-compose up

down:
	@docker-compose down

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
