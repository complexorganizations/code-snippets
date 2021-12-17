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
	content = readAppendLineByLine("assets/valid/valid-txt.txt")
	// Print the slice.
	fmt.Println(content)
}

// Read and append the file line by line to a slice.
func readAppendLineByLine(path string) []string {
	var returnSlice []string
	file, err := os.Open(path)
	if err != nil {
		log.Fatalln(err)
	}
	scanner := bufio.NewScanner(file)
	scanner.Split(bufio.ScanLines)
	for scanner.Scan() {
		returnSlice = append(returnSlice, scanner.Text())
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
	return returnSlice
}
