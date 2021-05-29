package main

import (
	"fmt"
	"os/exec"
)

func main() {
	if commandExists("commandName") {
		fmt.Println("The app is installed and the command works.")
	}
}

func commandExists(cmd string) bool {
	cmd, err := exec.LookPath(cmd)
	if err != nil {
		return false
	}
	return true
}
