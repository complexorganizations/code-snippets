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
	for _, content := range randomStrings {
		if !flag[content] {
			flag[content] = true
			uniqueString = append(uniqueString, content)
		}
	}
	return uniqueString
}
