package main

import (
	"fmt"
)

func main() {
	type config struct {
		proxy string
		repo  string
	}
	data := config{
		proxy: "apple",
		repo:  "github.com",
	}
	fmt.Println(data)
	// example two
	type rectangle struct {
		length  int
		breadth int
		color   string
	}
	rect1 := new(rectangle)
	rect1.length = 10
	rect1.breadth = 20
	rect1.color = "Green"
	fmt.Println(rect1)
}
