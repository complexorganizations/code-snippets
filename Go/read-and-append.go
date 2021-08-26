package main

import (
	"bufio"
	"log"
	"os"
)

func main() {
	var exampleContentSlice []string
	exampleContentSlice = readAndAppend("apple.txt", exampleContentSlice)
}

// Read and append the file.
func readAndAppend(fileLocation string, arrayName []string) []string {
	file, err := os.Open(fileLocation)
	if err != nil {
		log.Println(err)
	}
	// scan the file, and read the file
	scanner := bufio.NewScanner(file)
	// split each line
	scanner.Split(bufio.ScanLines)
	// append each line to array
	for scanner.Scan() {
		arrayName = append(arrayName, scanner.Text())
	}
	// close the file
	err = file.Close()
	if err != nil {
		log.Println(err)
	}
	return arrayName
}
