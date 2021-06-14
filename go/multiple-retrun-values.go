package main

import "fmt"

func vals() (int, int) {
	return 3, 7
}

func main() {
	three, seven := vals()
	fmt.Println(three)
	fmt.Println(seven)
	_, seven = vals()
	fmt.Println(seven)
}
