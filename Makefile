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

# 100.curl : 100回実行される
# 1000.curl : 1000回実行される
%.curl:
	@script/curl_test.sh $*