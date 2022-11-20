package main

import (
	"fmt"
	"log"
	"os/user"
)

func main() {
	// Print the current user's uid
	fmt.Println(getCurrentUserUID())
}

// Get the current user's uid
func getCurrentUserUID() string {
	user, err := user.Current()
	if err != nil {
		log.Fatalln(err)
	}
	return user.Uid
}
