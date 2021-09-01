package main

import (
	"fmt"
	"sort"
)

func main() {
	randomString := []string{
		"2",
		"3",
		"1",
	}
	fmt.Println(randomString)
	fmt.Println(sortList(randomString))
}

func sortList(content []string) []string {
	sort.Strings(content)
	return content
}
