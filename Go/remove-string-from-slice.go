package main

import (
	"fmt"
)

func main() {
	sampleSlice := []string{"one", "two", "three"}
	newImprovedSlice := removeStringFromSlice(sampleSlice, "two")
	fmt.Println(newImprovedSlice)
}

func removeStringFromSlice(originalSlice []string, removeString string) []string {
	var newSlice []string
	for _, content := range originalSlice {
		if content == removeString {
			content = ""
		}
		if len(content) >= 1 {
			newSlice = append(newSlice, content)
		}
	}
	return newSlice
}
