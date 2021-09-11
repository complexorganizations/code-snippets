package main

import "fmt"

func main() {
	content := "test"
	// if statement
	if content == "test" {
		fmt.Println(true)
	}
	// if / else
	if content == "test" {
		fmt.Println(true)
	} else {
		fmt.Println(false)
	}
	// if / else if
	if content == "test" {
		fmt.Println(true)
	} else if content == "not-test" {
		fmt.Println(false)
	}
	// if / else if / else
	if content == "test" {
		fmt.Println(true)
	} else if content == "not-test" {
		fmt.Println(true)
	} else {
		fmt.Println(false)
	}
}
