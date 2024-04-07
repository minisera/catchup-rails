up:
	docker compose up -d
build:
	docker compose build --no-cache
start:
	docker compose start
stop:
	docker compose stop
down:
	docker compose down --remove-orphans
restart:
	@make down
	@make up
web:
	docker compose exec web bash
mysql:
	docker compose exec db bash