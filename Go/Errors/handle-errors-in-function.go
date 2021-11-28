package main

import (
	"log"
	"os"
)

func main() {
	// Handle all errors at the function level.
	err := os.Remove("assets/remove/6VoNjRbnPXfmLpW1WyWt")
	if err != nil {
		log.Println(err)
	}
}
