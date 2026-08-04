ci:
	docker compose -f docker-compose.yml run -e NODE_ENV=test app make test

setup:
	docker compose run --rm app make setup

test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

dev:
	docker compose up

down:
	docker compose down

build:
	docker compose build

clean:
	docker compose down -v