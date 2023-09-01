package main

import (
	"fmt"
)

func main() {
	// switch without a condition is the same as switch true
	value := 10
	switch value {
	case 1:
		fmt.Println("Value is 1")
	case 2:
		fmt.Println("Value is 2")
	case 3:
		fmt.Println("Value is 3")
	default:
		fmt.Println("Value is not 1, 2 or 3")
	}
}
