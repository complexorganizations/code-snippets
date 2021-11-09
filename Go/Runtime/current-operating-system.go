package main

import (
	"fmt"
	"runtime"
)

func main() {
	// Print the current operating system.
	fmt.Println(getCurrentOperatingSystem())
}

// Get the current operating system name.
func getCurrentOperatingSystem() string {
	return runtime.GOOS
}
