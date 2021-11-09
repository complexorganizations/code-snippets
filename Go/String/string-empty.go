package main

import (
	"fmt"
)

func main() {
	var randomData string
	fmt.Println(isStringEmpty(randomData))
}

// Check if the string isnt empty
func isStringEmpty(content string) bool {
	return len(content) == 0
}