package main

import (
	"fmt"
)

func main() {
	// defer function will exit at the end
	defer fmt.Println("Hello, playground")
	fmt.Println("This is a test")
}
