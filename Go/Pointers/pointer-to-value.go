package main

import "fmt"

func main() {
	primaryValue := "Hello, World!"
	fmt.Println(pointerLocationToValue(&primaryValue))
}

// Turn a pointer's position into a value.
func pointerLocationToValue(content *string) string {
	return *content
}
