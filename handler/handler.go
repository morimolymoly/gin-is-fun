package handler

import (
	"github.com/gin-gonic/gin"
)

// Pong ...
// Ping/へのハンドラ
func Pong(c *gin.Context) {
	c.JSON(200, gin.H{
		"message": "pong",
	})
}
