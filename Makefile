.PHONY: use-minikube
use-minikube:
	kubectl config use-context minikube

.PHONY: skaffold
skaffold:
	skaffold dev

.PHONY: port-foward
port-foward:
	kubectl port-forward deployment/gin-is-fun 8080:8080
