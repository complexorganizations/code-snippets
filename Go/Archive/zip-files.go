package main

import (
	"archive/zip"
	"bytes"
	"io"
	"log"
	"os"
)

func main() {
	// Create a list of files to zip
	documents := []string{".github/author.md", ".github/license", ".github/README.md"}
	zipAllDocuments(documents, "bar.zip")
}

// Take in a path of files and zip them up into a single zip file
func zipAllDocuments(documents []string, path string) {
	// Create a buffer to write our archive to.
	bytesBuffer := new(bytes.Buffer)
	// Create a new zip archive.
	zipWriter := zip.NewWriter(bytesBuffer)
	// Add some files to the archive.
	for _, document := range documents {
		// Open the file
		file, err := os.Open(document)
		if err != nil {
			log.Fatalln(err)
		}
		// Create a new zip file entry
		zipEntry, err := zipWriter.Create(document)
		if err != nil {
			log.Fatalln(err)
		}
		// Copy the file data to the zip
		_, err = io.Copy(zipEntry, file)
		if err != nil {
			log.Fatalln(err)
		}
		err = file.Close()
		if err != nil {
			log.Fatalln(err)
		}
	}
	err := zipWriter.Close()
	if err != nil {
		log.Fatalln(err)
	}
	// Write the zip file to disk
	zipFile, err := os.Create(path)
	if err != nil {
		log.Fatalln(err)
	}
	_, err = io.Copy(zipFile, bytesBuffer)
	if err != nil {
		log.Fatalln(err)
	}
	err = zipFile.Close()
	if err != nil {
		log.Fatalln(err)
	}
}
