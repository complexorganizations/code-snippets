package main

import (
	"io"
	"log"
	"os"
)

func main() {
	err := os.Remove("assets/remove/q88BBdSL9QxbrnZRQ432x82uWigXvgD3")
	if err != nil {
		discardErrors(err)
	}
}

// Discard all the logs.
func discardErrors(errors error) {
	if errors != nil {
		log.SetOutput(io.Discard)
	}
}
