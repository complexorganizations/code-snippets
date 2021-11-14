package main

import (
	"archive/zip"
	"io"
	"log"
	"os"
)

func main() {
	// Unzip a zip file and write it to the given destination
	unzipAndWrite("foo.zip", ".")
}

// Unzip a zip file and write it to the given destination
func unzipAndWrite(source string, destination string) {
	zipReader, err := zip.OpenReader(source)
	if err != nil {
		log.Fatalln(err)
	}
	for _, file := range zipReader.File {
		zipFile, err := file.Open()
		if err != nil {
			log.Fatalln(err)
		}
		path := destination + "/" + file.Name
		if file.FileInfo().IsDir() {
			os.MkdirAll(path, file.Mode())
		} else {
			filePath, err := os.OpenFile(path, os.O_WRONLY|os.O_CREATE|os.O_TRUNC, file.Mode())
			if err != nil {
				log.Fatalln(err)
			}
			_, err = io.Copy(filePath, zipFile)
			if err != nil {
				log.Fatalln(err)
			}
			err = filePath.Close()
			if err != nil {
				log.Fatalln(err)
			}
			err = zipFile.Close()
			if err != nil {
				log.Fatalln(err)
			}
		}
	}
	err = zipReader.Close()
	if err != nil {
		log.Fatalln(err)
	}
}
