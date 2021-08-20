package main

import (
	"log"
	"os/exec"
)

func main() {
	cmd := "git"
	err := commandExists(cmd)
	if err != nil {
		log.Printf("Error: The application %s was not found in the system.\n", cmd)
	}
}

// Application Check
func commandExists(cmd string) error {
	cmd, err := exec.LookPath(cmd)
	if err != nil {
		return err
	}
	return nil
}
