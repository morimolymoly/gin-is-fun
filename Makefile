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

.PHONY: kube-push
push-kube:
	eval `minikube docker-env` && docker build -t gin-is-fun:local .

.PHONY: reload
reload:
	docker-compose down && docker-compose up

.PHONY: use-minikube
use-minikube:
	kubectl config use-context minikube

.PHONY: deploy
deploy:
	kubectl create -f kubernetes/deployment.yaml --record

.PHONY: apply
apply:
	kubectl apply -f kubernetes/deployment.yaml --record

.PHONY: delete
delete:
	kubectl delete -f kubernetes/deployment.yaml

.PHONY: port-foward
port-foward:
	kubectl port-forward deployment/gin-is-fun 8080:8080
