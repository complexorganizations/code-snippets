package main

import (
	"fmt"
)

func main() {
	sampleSlice := []string{"one", "two", "three"}
	sampleSlice = removeStringFromSlice(sampleSlice, "two")
	fmt.Println(sampleSlice)
}

func removeStringFromSlice(originalSlice []string, removeString string) []string {
	// go though the array
	for i, content := range originalSlice {
		// if the array matches with the string, you remove it from the array
		if content == removeString {
			return append(originalSlice[:i], originalSlice[i+1:]...)
		}
	}
	return originalSlice
}
