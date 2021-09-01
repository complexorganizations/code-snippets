package main

import (
	"fmt"
	"log"
)

var err error

func main() {
	if exampleFunction("exmple-file") {
		fmt.Println("It works")
	}
}

func exampleFunction(filePath string) bool {
	err = os.Remove(filePath)
	if err != nil {
		log.Fatalln(err)
	}
	return true
}
