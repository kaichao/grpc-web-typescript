all: protoc build up

protoc:
	@ cp server/helloworld.proto .
	@ docker run --rm -v `pwd`:/defs namely/protoc-all -o server -f helloworld.proto -l web
	@ docker run --rm -v `pwd`:/defs namely/protoc-all -o client-typescript -f helloworld.proto -l web
	@ rm -f ./helloworld.proto
build:
	docker-compose build
up:
	docker-compose up
down:
	docker-compose down
clean:
	@ rm -f server/?elloworld*.?s client-typescript/?elloworld*.?s
	@ docker rmi `docker images "grpc-web-typescript*" -q`