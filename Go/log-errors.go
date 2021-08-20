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
		log.Println(err)
		return false
	}
	return true
}
