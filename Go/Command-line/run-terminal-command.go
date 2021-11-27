package main

import (
	"log"
	"os/exec"
)

func main() {
	// Run a command in the system terminal.
	runSystemTerminalCommand("echo")
}

// Run a command in the system terminal.
func runSystemTerminalCommand(content string) {
	cmd := exec.Command(content)
	err := cmd.Run()
	if err != nil {
		log.Fatalln(err)
	}
}
