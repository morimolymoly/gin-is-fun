# gin-is-fun
skaffoldでビルド&デプロイする

## requirements
* skaffold
* [docker local registry](https://github.com/morimolymoly/repository-compose)
* minikube

## Usage
First of all, you need to launch minikube and docker local registry!!
```sh
# deploy
make deploy

# port foward
make port-foward

# apiを叩く
curl localhost:8080/ping

# reload
make reload

# delete pods
make delete
```

## skaffold
* skaffold.yaml 本番deploy
* local-skaffold.yaml ローカル用

# LICENSE
MIT
