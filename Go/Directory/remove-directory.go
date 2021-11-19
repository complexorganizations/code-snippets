package main

import (
	"log"
	"os"
)

func main() {
	removeDirectory("assets/remove/89mmtNQY7hM7389f48Sw46ZhbRDNQ2h9/")
}

// Remove a directory and all its contents.
func removeDirectory(dir string) {
	err := os.RemoveAll(dir)
	if err != nil {
		log.Fatalln(err)
	}
}
