.PHONY: use-minikube
use-minikube:
	kubectl config use-context minikube

.PHONY: deploy
deploy:
	skaffold run -f local-skaffold.yaml

.PHONY: delete
delete:
	skaffold delete -f local-skaffold.yaml

.PHONY: reload
reload: delete deploy

.PHONY: port-foward
port-foward:
	kubectl port-forward deployment/gin-is-fun 8080:8080
