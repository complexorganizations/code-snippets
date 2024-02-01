package main

import (
	"log"
	"os"
)

func main() {
	// Set the environment variable
	setEnviromentVariable("FOO", "BAR")
}

// Take in a key and value string and add or update the environment variable
func setEnviromentVariable(key string, value string) {
	err := os.Setenv(key, value)
	if err != nil {
		log.Fatalln(err)
	}
}
