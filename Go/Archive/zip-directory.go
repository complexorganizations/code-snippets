package main

import (
	"archive/zip"
	"io"
	"log"
	"os"
)

func main() {
	// Zip a directory and all the files in it.
	folderPath := []string{"Network/"}
	zipDirectories(folderPath, "foo.zip")
}

// Zip a slice of directories and all the files in them.
func zipDirectories(directories []string, path string) {
	zipFile, err := os.Create(path)
	if err != nil {
		log.Fatalln(err)
	}
	zipWriter := zip.NewWriter(zipFile)
	// Iterate through all the files in the directories.
	for _, directory := range directories {
		// Find the files in the directory.
		files, err := os.ReadDir(directory)
		if err != nil {
			log.Fatalln(err)
		}
		for _, file := range files {
			// Create a reader for the file.
			filePath := directory + file.Name()
			fileReader, err := os.Open(filePath)
			if err != nil {
				log.Fatalln(err)
			}
			// Create the zip file.
			fileWriter, err := zipWriter.Create(file.Name())
			if err != nil {
				log.Fatalln(err)
			}
			_, err = io.Copy(fileWriter, fileReader)
			if err != nil {
				log.Fatalln(err)
			}
			err = fileReader.Close()
			if err != nil {
				log.Fatalln(err)
			}
		}
	}
	err = zipWriter.Close()
	if err != nil {
		log.Fatalln(err)
	}
	err = zipFile.Close()
	if err != nil {
		log.Fatalln(err)
	}
}
