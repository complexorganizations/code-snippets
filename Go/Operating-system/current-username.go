package main

import (
	"fmt"
	"log"
	"os/user"
)

func main() {
	// Get the current user's username and print it.
	fmt.Println(getCurrentUsername())
}

// Get the current user's username and return it as string.
func getCurrentUsername() string {
	user, err := user.Current()
	if err != nil {
		log.Fatalln(err)
	}
	return user.Username
}
