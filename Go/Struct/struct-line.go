package main

import (
	"fmt"
)

func main() {
	// Structs are like classes in other languages.
	type companyInfo struct {
		name  string
		age   int
		value float64
	}
	// Set the values of the struct.
	data := new(companyInfo)
	data.name = "Google"
	data.age = 10
	data.value = 100.0
	// Print the values of the struct.
	fmt.Println(data)
	fmt.Println(data.name)
	fmt.Println(data.age)
	fmt.Println(data.value)
}
