package main

import (
	"fmt"
	"runtime"
)

func main() {
	// Print the current architecture
	fmt.Println(getCurrentArchitecture())
}

// Get the current architecture
func getCurrentArchitecture() string {
	return runtime.GOARCH
}
