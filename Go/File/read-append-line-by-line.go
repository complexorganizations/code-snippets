package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
)

func main() {
	// Create a slice of strings.
	var content []string
	// Read and append the file line by line to the slice.
	content = readAppendLineByLine("assets/ignore/README.md", content)
	// Print the slice.
	fmt.Println(content)
}

// Read and append the file line by line to a slice.
func readAppendLineByLine(path string, slice []string) []string {
	file, err := os.Open(path)
	if err != nil {
		log.Fatalln(err)
	}
	scanner := bufio.NewScanner(file)
	scanner.Split(bufio.ScanLines)
	for scanner.Scan() {
		slice = append(slice, scanner.Text())
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
	return slice
}
