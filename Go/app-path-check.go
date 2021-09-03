package main

import (
	"fmt"
	"log"
	"os/exec"
)

func main() {
	applicationName := "git"
	valid, err := commandExists(applicationName)
	if err != nil {
		log.Printf("Error: The application %s was not found in the system.\n", applicationName)
	}
	fmt.Println(valid)
}

// Application Check
func commandExists(cmd string) (bool, error) {
	cmd, err := exec.LookPath(cmd)
	if err != nil {
		return false, err
	}
	return true, nil
}
