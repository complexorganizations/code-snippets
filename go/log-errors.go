package main

import (
	"fmt"
	"log"
)

var err error

func main() {
	if exampleFunction("exmple-file") {
		fmt.Println("It works")
	} else {
		fmt.Println("its broken")
	}
}

func exampleFunction(filePath string) bool {
	err = os.Remove(filePath)
	if err != nil {
		return false
		handleErrors(err)
	}
	return true
}

func handleErrors(err error) {
	if err != nil {
		log.Println(err)
	}
}
