package main

import (
	"log"
	"os"
)

func main() {
	// Handle all the errors in a single place
	err := os.Remove("example")
	handleError(err)
	// Handle one error at a time
	err = os.Remove("example")
	if err != nil {
		panic(err)
	}
	// Exit the program if an error occurs
	err = os.Remove("example")
	if err != nil {
		os.Exit(0)
	}
}

func handleError(err error) {
	if err != nil {
		log.Println(err)
	}
}
