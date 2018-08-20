FROM golang:latest

ADD . /go/src/github.com/morimolymoly/gin-is-fun

WORKDIR /go/src/github.com/morimolymoly/gin-is-fun
RUN go install github.com/morimolymoly/gin-is-fun/src/server
CMD ["/go/bin/server"]
EXPOSE 8080
