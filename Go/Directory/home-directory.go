package main

import (
	"fmt"
	"os"
)

func main() {
	// Print the current users home directory
	fmt.Println(currentUserHomeDir())
}

// Get the current users home directory
func currentUserHomeDir() string {
	homeDir, err := os.UserHomeDir()
	if err != nil {
		return "-1"
	}
	return homeDir
}
