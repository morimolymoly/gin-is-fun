.PHONY: up
up:
	docker-compose up -d

.PHONY: down
down:
	docker-compose down

.PHONY: build
build:
	docker-compose build

.PHONY: push
push:
	docker-compose push

.PHONY: reload
reload:
	docker-compose down && docker-compose up
