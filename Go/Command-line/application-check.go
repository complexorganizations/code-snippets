package main

import (
	"fmt"
	"os/exec"
)

func main() {
	// Check if the application is installed and in path
	fmt.Println(commandExists("go"))
}

// Check if the application is installed and in path
func commandExists(application string) bool {
	_, err := exec.LookPath(application)
	return err == nil
}
