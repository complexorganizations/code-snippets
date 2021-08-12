package main

import "fmt"

func main() {
	// Both values as variables
	three, seven := vals()
	fmt.Println(three)
	fmt.Println(seven)
	// One value at a time.
	_, seven = vals()
	fmt.Println(seven)
	three, _ = vals()
	fmt.Println(three)
	// Ge the values directly.
	fmt.Println(vals())
}

func vals() (int, int) {
	return 3, 7
}
