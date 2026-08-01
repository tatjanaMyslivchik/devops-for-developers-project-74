setup: install db-migrate

install:
	npm install

db-migrate:
	npm run migrate

build:
	npm run build

prepare-env:
	cp -n .env.example .env

start:
	NODE_ENV=production npm run start

dev:
	npx concurrently "make start-frontend" "make start-backend"

start-backend:
	npm start -- --watch --verbose-watch --ignore-watch='node_modules .git .sqlite'

start-frontend:
	npx webpack --watch --progress

lint:
	npx biome check .

lint-fix:
	npx biome check --write .

test:
	NODE_ENV=test npm test -s

ci:
	docker compose -f ../docker-compose.yml run -e NODE_ENV=test app make test

# Docker Compose команды
docker-setup:
	docker compose run --rm app make setup

docker-test:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

docker-dev:
	docker compose up

docker-down:
	docker compose down

docker-build:
	docker compose build

docker-clean:
	docker compose down -v
