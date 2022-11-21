package main

import (
	"log"
	"os"
)

func main() {
	// Handle all the errors in a single place.
	err := os.MkdirAll("assets/remove/vwOHSAobWjIX4Ly3AioK7koCwD3HoVRzGgGRoHhI", 0755)
	if err != nil {
		handleErrors(err)
	}
}

// Handle all the errors in a single unified place and determine what to do.
func handleErrors(err error) {
	if err != nil {
		log.Fatalln(err)
	}
}
