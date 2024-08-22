up:
	mkdir -p /home/pgrossma/data/web
	mkdir -p /home/pgrossma/data/mysql
	docker compose -f ./srcs/docker-compose.yml up

upd:
	docker compose -f ./srcs/docker-compose.yml up -d

down:
	docker compose -f ./srcs/docker-compose.yml down

build:
	docker compose -f ./srcs/docker-compose.yml build

re: down clean build up

clean:
	rm -rf /home/pgrossma/data/
	docker system prune -a -f --volumes
