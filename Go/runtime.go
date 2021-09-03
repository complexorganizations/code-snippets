package main

import (
	"fmt"
	"runtime"
)

func main() {
	// Print the current OS
	fmt.Println("Current OS:", getCurrentOS())
	// Print the current architecture
	fmt.Println("Current Arch:", getCurrentArch())
	// Print the current version of Go
	fmt.Println("Current Go Version:", getCurrentGoVersion())
	// Print the current go root
	fmt.Println("Current Go Root:", getCurrentGoRoot())
}

// Get the current OS
func getCurrentOS() string {
	return runtime.GOOS
}

// Get the current architecture
func getCurrentArch() string {
	return runtime.GOARCH
}

// Get the current version of Go
func getCurrentGoVersion() string {
	return runtime.Version()
}

// Get the current go root
func getCurrentGoRoot() string {
	return runtime.GOROOT()
}
