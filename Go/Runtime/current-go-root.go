package main

import (
	"fmt"
	"runtime"
)

func main() {
	// Print the current go root
	fmt.Println(getCurrentGoRoot())
}

// Get the current go root
func getCurrentGoRoot() string {
	return runtime.GOROOT()
}
