package main

import (
	"log"
	"os/exec"
)

func main() {
	commandExists("git")
}

// Application Check
func commandExists(cmd string) {
	cmd, err := exec.LookPath(cmd)
	if err != nil {
		log.Printf("Error: The application %s was not found in the system.\n", cmd)
	}
}
