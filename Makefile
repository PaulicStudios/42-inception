up:
	docker compose -f ./srcs/docker-compose.yml up

upd:
	docker compose -f ./srcs/docker-compose.yml up -d

down:
	docker compose -f ./srcs/docker-compose.yml down

build:
	docker compose -f ./srcs/docker-compose.yml build

re: down clean build up

clean:
	echo "Todo: Cleaning all containers"
