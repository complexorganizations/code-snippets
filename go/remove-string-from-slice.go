package main

import (
	"fmt"
)

func removeStringFromSlice(originalSlice []string, removeString string) []string {
	for i := 0; i < len(originalSlice); i++ {
		if originalSlice[i] == removeString {
			return append(originalSlice[:i], originalSlice[i+1:]...)
		}
	}
	return originalSlice
}

func main() {
	sampleSlice := []string{"one", "two", "three"}
	sampleSlice = removeStringFromSlice(sampleSlice, "two")
	fmt.Println(sampleSlice)
}
