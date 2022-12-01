package main

import (
	"fmt"
)

func main() {
	// Structs can have fields with custom types.
	type personalInfo struct {
		name string
		male bool
		age  int
	}
	// Set the value for the struct
	data := personalInfo{
		name: "John",
		male: false,
		age:  30,
	}
	// Print the values.
	fmt.Println(data)
	fmt.Println(data.name)
	fmt.Println(data.male)
	fmt.Println(data.age)
}
