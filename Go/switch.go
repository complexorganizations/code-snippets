package main

import (
	"fmt"
)

func main() {
	value := "John Doe"
	switch value {
	case "John Doe":
		fmt.Println("Hello John Doe")
	case "Jane Doe":
		fmt.Println("Hello Jane Doe")
	default:
		fmt.Println("Hello Unknown")
	}
}
