package main

import (
	"log"
	"os"
)

func main() {
	err := os.Remove("assets/remove/kqe3qZLdHLRnDZUSVBdm")
	if err != nil {
		saveAllErrors(err, "logs.log")
	}
}

// Save all the errors in a single given path.
func saveAllErrors(errors error, path string) {
	filePath, err := os.OpenFile(path, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		log.Fatalln(err)
	}
	log.SetOutput(filePath)
	log.Println(errors)
	err = filePath.Close()
	if err != nil {
		log.Fatalln(err)
	}
}
