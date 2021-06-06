package main

import "fmt"

func main() {
  // List of random strings.
	nameSlice := []string{
		"Cyrus",
		"Cyrus",
		"Bobby",
		"June",
		"James",
		"James",
		"Cyrus",
		"James",
		"Jeffery",
		"Bobby",
		"April",
		"April",
		"April",
	}
	uniqueNames := makeUnique(nameSlice)
	fmt.Println(uniqueNames)
}

func makeUnique(randomStrings []string) []string {
	flag := make(map[string]bool)
	var uniqueString []string
	for i := 0; i < len(randomStrings); i++ {
		if !flag[randomStrings[i]] {
			flag[randomStrings[i]] = true
			uniqueString = append(uniqueString, randomStrings[i])
		}
	}
	return uniqueString
}
