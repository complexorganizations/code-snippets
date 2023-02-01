package main

import (
	"fmt"
	"runtime"
)

func main() {
	// Print the current version of Go
	fmt.Println(getCurrentGoVersion())
}

// Get the current version of Go
func getCurrentGoVersion() string {
	return runtime.Version()
}
