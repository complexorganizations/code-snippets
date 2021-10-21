package main

import (
	"fmt"
	"log"
	"os"
	"path/filepath"
)

var err error

func main() {
	// Check if the folder exists
	fmt.Println(folderExists("/"))
	// Get the ammount of files in the folder
	fmt.Println(filesInDirectory("/"))
	// Get the current user home directoryo2
	fmt.Println(usersHomeDirectory())
	// Check if the folder is empty
	fmt.Println(isDirEmpty("/"))
	// Create a folder in the system
	createFolder("src")
	// Delete a folder in the system
	deleteFolder("src")
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
func filesInDirectory(filePath string) int {
	files, err := os.ReadDir(filePath)
	if err != nil {
		return -1
	}
	return len(files)
}

// Get the current user home directory
func usersHomeDirectory() string {
	userHomeDir, err := os.UserHomeDir()
	if err != nil {
		log.Println(err)
	}
	return userHomeDir
}

// Check if the folder is empty
func isDirEmpty(filePath string) bool {
	files, err := os.ReadDir(filePath)
	if err != nil {
		log.Println(err)
	}
	return len(files) == 0
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

// Create a folder in the system.
func createFolder(foldername string) {
	err = os.Mkdir(foldername, 0755)
	if err != nil {
		log.Fatalf("Error: Failed to create %s directory.\n", foldername)
	}
}

// Delete a folder in the system.
func deleteFolder(foldername string) {
	err = os.Remove(foldername)
	if err != nil {
		log.Fatalf("Error: Failed to delete %s directory.\n", foldername)
	}
}
