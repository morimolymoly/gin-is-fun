package handler

import (
	"github.com/gin-gonic/gin"
)

// Pong2 ...
// Ping2/ へのハンドラ
func Pong2(c *gin.Context) {
	c.JSON(200, gin.H{
		"message": "pong2",
	})
}
