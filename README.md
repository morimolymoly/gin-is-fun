# gin-is-fun
skaffoldでビルド&デプロイする

## requirements
* skaffold
* [docker local registry](https://github.com/morimolymoly/repository-compose)

## minikube上のdocker local registryにpush
```sh
# deploy
make deploy

# port foward
make port-foward

# apiを叩く
curl localhost:8080/ping

# 再読込
make reload

# pod削除
make delete
```

## skaffold
* skaffold.yaml 本番deploy
* local-skaffold.yaml ローカル用
