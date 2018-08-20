.PHONY: use-minikube
use-minikube:
	kubectl config use-context minikube

.PHONY: deploy
deploy:
	skaffold run

.PHONY: delete
delete:
	skaffold delete

.PHONY: reload
reload: delete deploy

.PHONY: port-foward
port-foward:
	kubectl port-forward deployment/gin-is-fun 8080:8080
