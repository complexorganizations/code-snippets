package main

import (
	"fmt"
	"runtime/debug"
)

func main() {
	// Set the max threads to 100
	setMaxThreads(100)
}

// Set the max ammount of threads for application
func setMaxThreads(max int) {
	debug.SetMaxThreads(max)
}