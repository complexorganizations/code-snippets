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
	content = readAppendLineByLine("foo.txt", content)
	// Print the slice.
	fmt.Println(content)
}

// Read and append the file line by line to a slice.
func readAppendLineByLine(fileLocation string, arrayName []string) []string {
	file, err := os.Open(fileLocation)
	if err != nil {
		log.Fatalln(err)
	}
	scanner := bufio.NewScanner(file)
	scanner.Split(bufio.ScanLines)
	for scanner.Scan() {
		arrayName = append(arrayName, scanner.Text())
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
	return arrayName
}
