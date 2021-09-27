package main

import (
	"fmt"
	"log"
	"os"
)

func main() {
	// Check if the folder exists
	if folderExists("/") {
		fmt.Println("The folder exists")
	}
	// Get the ammount of files in the folder
	numberOfFiles, err := filesInDirectory("/")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(numberOfFiles)
	// Get the current user home directory
	userHomeDir, err := usersHomeDirectory()
	if err != nil {
		log.Println(err)
	}
	fmt.Println(userHomeDir)
	// Check if the folder is empty
	returnValue, err := isDirEmpty("/")
	if err != nil {
		log.Println(err)
	}
	fmt.Println(returnValue)
}

// Check if a folder exists
func folderExists(foldername string) bool {
	info, err := os.Stat(foldername)
	if err != nil {
		return false
	}
	return info.IsDir()
}

// Get the ammount of files in a folder
func filesInDirectory(filePath string) (int, error) {
	files, err := os.ReadDir(filePath)
	if err != nil {
		return -1, err
	}
	return len(files), err
}

// Get the current user home directory
func usersHomeDirectory() (string, error) {
	userHomeDir, err := os.UserHomeDir()
	if err != nil {
		return "", err
	}
	return userHomeDir, nil
}

// Check if the folder is empty
func isDirEmpty(filePath string) (bool, error) {
	files, err := os.ReadDir(filePath)
	if err != nil {
		return false, err
	}
	return len(files) == 0, nil
}

// Get a list of all the files in a folder
func getFilesInFolder(folderPath string) []string {
	files := []string{}
	err := filepath.Walk(folderPath, func(path string, info os.FileInfo, err error) error {
		files = append(files, path)
		return nil
	})
	if err != nil {
		log.Fatal(err)
	}
	return files
}
