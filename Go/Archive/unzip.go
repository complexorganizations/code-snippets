package main

import (
	"archive/zip"
	"io"
	"log"
	"os"
)

func main() {
	//
	unzip("foo.zip", ".")
}

// unzip a zip file to a destination.
func unzip(src, dest string) {
	r, err := zip.OpenReader(src)
	if err != nil {
		log.Fatalln(err)
	}
	defer r.Close()
	for _, f := range r.File {
		rc, err := f.Open()
		if err != nil {
			log.Fatalln(err)
		}
		defer rc.Close()
		path := dest + "/" + f.Name
		if f.FileInfo().IsDir() {
			os.MkdirAll(path, f.Mode())
		} else {
			f, err := os.OpenFile(
				path, os.O_WRONLY|os.O_CREATE|os.O_TRUNC, f.Mode())
			if err != nil {
				log.Fatalln(err)
			}
			defer f.Close()
			_, err = io.Copy(f, rc)
			if err != nil {
				log.Fatalln(err)
			}
		}
	}
}
