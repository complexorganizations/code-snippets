package main

import (
	"fmt"
	"log"
	"os/exec"
)

func main() {
	// Run a system command and get the output.
	fmt.Println(string(runSystemCommandAndGetOutput("ls")))
}

// Run a system command and get the output.
func runSystemCommandAndGetOutput(content string) []byte {
	out, err := exec.Command(content).Output()
	if err != nil {
		log.Fatal(err)
	}
	return out
}
