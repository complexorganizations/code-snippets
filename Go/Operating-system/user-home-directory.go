package main

import (
	"fmt"
	"log"
	"os/user"
)

func main() {
	// Get the current user's home directory.
	fmt.Println(getHomeDirectory())
}

// Get the current user's home directory.
func getHomeDirectory() string {
	user, err := user.Current()
	if err != nil {
		log.Fatalln(err)
	}
	return user.HomeDir
}
