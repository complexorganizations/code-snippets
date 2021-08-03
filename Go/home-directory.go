package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	fmt.Println(usersHomeDirectory())
}

func usersHomeDirectory() string {
	userHomeDir, err := os.UserHomeDir()
	if err != nil {
		log.Fatal(err)
	}
	return userHomeDir
}
