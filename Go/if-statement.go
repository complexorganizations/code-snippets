package main

import "fmt"

func main() {
	content := "test"
	if content == "test" {
		fmt.Println(true)
	} else if content == "not-test" {
		fmt.Println(true)
	} else {
		fmt.Println(false)
	}
}
