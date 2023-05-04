package main

import (
	"fmt"
	"os"
)

func main() {
	// Print the current users home directory
	fmt.Println(currentUserHomeDir())
}

/* Imports the "os" package which provides the UserHomeDir() function
Defines the currentUserHomeDir() function
Invokes the UserHomeDir() function
Returns the home directory of the current user
Returns -1 if no user home directory is found */
func currentUserHomeDir() string {
	homeDir, err := os.UserHomeDir()
	if err != nil {
		return "-1"
	}
	return homeDir
}
