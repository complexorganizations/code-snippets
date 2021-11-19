package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
)

func main() {
	// Get the number of lines in the file
	fmt.Println(numberOfLines("assets/valid/valid-txt.txt"))
}

// Get the number of lines in a file
func numberOfLines(path string) int {
	file, err := os.Open(path)
	if err != nil {
		log.Fatalln(err)
	}
	scanner := bufio.NewScanner(file)
	scanner.Split(bufio.ScanLines)
	count := 0
	for scanner.Scan() {
		count = count + 1
	}
	err = scanner.Err()
	if err != nil {
		log.Fatalln(err)
	}
	err = file.Close()
	if err != nil {
		log.Fatalln(err)
	}
	return count
}
