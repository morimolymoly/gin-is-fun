# gin-is-fun
skaffoldでビルド&デプロイする

## requirements
* skaffold
* [docker local registry](https://github.com/morimolymoly/repository-compose)

## minikube上のdocker local registryにpush
```sh
make skaffold

# port foward
make port-foward

curl localhost:8080/ping
```
