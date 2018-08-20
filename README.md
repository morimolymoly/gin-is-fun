# gin-is-fun
minikubeのdockerでイメージをビルドしてdeployする．
## how2
```sh
# minikubeのdockerでbuild
make push-kube

# minikubeにdeploy
make deploy

# port foward
make port-foward

# apiを叩く
curl localhost:8080/ping
{"message":"pong"}
```
