package main

import (
	"fmt"
)

func main() {
	// A simple switch statement on a function call.
	fmt.Println(simpleSwitch("John Doe"))
}

// A simple switch statement on a function call.
func simpleSwitch(randomString string) string {
	switch randomString {
	case "John Doe":
		return "Hello John Doe"
	case "Jane Doe":
		return "Hello Jane Doe"
	default:
		return "Hello Unknown"
	}
}
