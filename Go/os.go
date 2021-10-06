package main

import (
	"fmt"
	"log"
	"os"
	"runtime"
	"runtime/debug"
)

func main() {
	// Get the local system temp dir
	fmt.Println(os.TempDir())
	// Get the local system hostname
	hostname, err := getSystemHostname()
	if err != nil {
		log.Println(err)
	}
	fmt.Println(hostname)
	// Set the max threads for the application
	maxThreads(10)
	// Free up system memory
	freeMemory()
	// Print the current OS
	fmt.Println("Current OS:", getCurrentOS())
	// Print the current architecture
	fmt.Println("Current Arch:", getCurrentArch())
	// Print the current version of Go
	fmt.Println("Current Go Version:", getCurrentGoVersion())
	// Print the current go root
	fmt.Println("Current Go Root:", getCurrentGoRoot())
	// Print the current go path
	fmt.Println("Current Go Path:", getCurrentGoPath())
}

// Get the current system hostname
func getSystemHostname() (string, error) {
	systemHostname, err := os.Hostname()
	if err != nil {
		return "", err
	}
	return systemHostname, nil
}

// Set the max ammount of threads for application
func maxThreads(threads int) {
	debug.SetMaxThreads(threads)
}

// Free up system memory
func freeMemory() {
	debug.FreeOSMemory()
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

// Get the current go path
func getCurrentGoPath() string {
	return os.Getenv("GOPATH")
}