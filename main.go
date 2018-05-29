package main

import (
	"github.com/gin-gonic/gin"
	"github.com/morimolymoly/gin-is-fun/handler"
)

func main() {
	r := gin.Default()
	r.GET("/ping", handler.Pong)
	r.GET("/ping2", handler.Pong2)
	r.Run()
}
