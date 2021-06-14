package main

import (
	"fmt"
)

func main() {
	if twoStringEqual("Apple", "Apple") {
		fmt.Println(true)
	} else {
		fmt.Println(false)
	}
	if twoStringEqual("App", "Apple") {
		fmt.Println(true)
	} else {
		fmt.Println(false)
	}
}

func twoStringEqual(firstString, secondString string) bool {
	if firstString == secondString {
		return true
	}
	return false
}
