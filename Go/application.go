package main

import (
	"fmt"
	"log"
	"os/exec"
)

func main() {
	// Check if the application is installed and in path
	fmt.Println(commandExists("git"))
}

// Check if the application is installed and in path
func commandExists(cmd string) bool {
	cmd, err := exec.LookPath(cmd)
	if err != nil {
		log.Printf("Error: The application %s was not found in the system.\n", cmd)
	}
	return true
}
