package main

import (
	"bufio"
	"crypto/sha512"
	"fmt"
	"io"
	"log"
	"os"
	"path/filepath"
	"strings"
)

func main() {
	// Check if file exists
	if fileExists("file.go") {
		fmt.Println("There is a file here.")
	}
	// Get the size of a file
	fileSize, err := fileSize("file.go")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(fileSize)
	// Get the file extension
	fmt.Println(fileExtension("/random/file/here.json"))
	// Read a file and return the contents
	content, err := readAFile("file.go")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(content)
	// Hidden files [.files]
	if hiddenFile(".DS_STORE") {
		fmt.Println("This is a hidden file")
	}
	// Get the sha256 hash of a file
	fmt.Println(generateSHA512("file.go"))
	// Get the path of the current executable
	fmt.Println(getExecutablePath())
	// Append and write the content to a file.
	err = writeToFile("foo.txt", "The content to write to the file.")
	if err != nil {
		log.Fatal(err)
	}
	// Don't append and write the content to a file.
	err = writeContnetToFile("bar.txt", "The content to write to the file.")
	if err != nil {
		log.Fatal(err)
	}
	// Read and append the file.
	var exampleContentSlice []string
	exampleContentSlice = readAndAppend("foo.txt", exampleContentSlice)
	fmt.Println(exampleContentSlice)
	// Get the length of a file
	fmt.Println(fileLength("foo.txt"))
}

// Check if a file exists
func fileExists(filename string) bool {
	info, err := os.Stat(filename)
	if err != nil {
		return false
	}
	return !info.IsDir()
}

// Get the size of a file
func fileSize(filepath string) (int64, error) {
	file, err := os.Stat(filepath)
	if err != nil {
		return -1, err
	}
	return file.Size(), nil
}

// Get the file extension
func fileExtension(filename string) string {
	return filepath.Ext(filename)
}

// Read a file and return the contents
func readAFile(path string) ([]byte, error) {
	content, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	return content, nil
}

// Hidden files [.files]
func hiddenFile(filename string) bool {
	return strings.HasPrefix(filename, ".")
}

// Get the sha256 hash of a file
func generateSHA512(filePath string) []byte {
	file, _ := os.Open(filePath)
	defer file.Close()
	hash := sha512.New()
	io.Copy(hash, file)
	return hash.Sum(nil)
}

// Get the path of the current executable
func getExecutablePath() string {
	currentExecutable, err := os.Executable()
	if err != nil {
		log.Fatal(err)
	}
	return currentExecutable
}

// Read and append the file line by line to a slice.
func readAndAppend(fileLocation string, arrayName []string) []string {
	file, err := os.Open(fileLocation)
	if err != nil {
		log.Println(err)
	}
	scanner := bufio.NewScanner(file)
	scanner.Split(bufio.ScanLines)
	for scanner.Scan() {
		arrayName = append(arrayName, scanner.Text())
	}
	err = file.Close()
	if err != nil {
		log.Println(err)
	}
	return arrayName
}

// get the length of a file
func fileLength(fileName string) int {
	content, err := os.ReadFile(fileName)
	if err != nil {
		log.Fatal(err)
	}
	return len(content)
}

// Append and write to file
func writeToFile(pathInSystem string, content string) error {
	filePath, err := os.OpenFile(pathInSystem, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		return err
	}
	_, err = filePath.WriteString(content + "\n")
	if err != nil {
		return err
	}
	err = filePath.Close()
	if err != nil {
		return err
	}
	return nil
}

// Don't append and write to file
func writeContnetToFile(filepath string, content string) error {
	err := os.WriteFile(content, []byte(filepath), 0644)
	if err != nil {
		return err
	}
	return nil
}


// Get the ammount of lines in a file
func lineCount(fileName string) int {
	file, err := os.Open(fileName)
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	scanner.Split(bufio.ScanLines)
	count := 0
	for scanner.Scan() {
		count++
	}
	if err := scanner.Err(); err != nil {
		log.Fatal(err)
	}
	return count
}