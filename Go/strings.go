package main

import (
	"fmt"
	"log"
	"net/url"
	"strings"
)

func main() {
	// Check if a string is empty
	fmt.Println(isEmpty("apple"))
	// Check if two strings are equal
	fmt.Println(twoStringEqual("apple", "apple"))
	// Remove a string from a slice
	sampleSlice := []string{"one", "two", "three"}
	fmt.Println(sampleSlice)
	newImprovedSlice := removeStringFromSlice(sampleSlice, "two")
	fmt.Println(newImprovedSlice)
	// Make a unique array of strings.
	nameSlice := []string{
		"Cyrus",
		"Cyrus",
		"Bobby",
		"June",
		"James",
		"James",
		"Cyrus",
		"James",
		"Jeffery",
		"Bobby",
		"April",
		"April",
		"April",
	}
	uniqueNames := makeUnique(nameSlice)
	fmt.Println(uniqueNames)
	// Get the index value of a item in a array
	fmt.Println(indexValueInArray("April", uniqueNames))
	// Find and replace inside a string
	fmt.Println(findAndReplace("Hello World", "World", "Go"))
	// Get the length of a string
	fmt.Println(stringLength("Random String Here."))
	// Validate the URI
	if validURL("https://www.example.com") {
		fmt.Println("works")
	}
	// Get the hostname from the URI
	fmt.Println(getHostnameFromURI("https://www.example.com"))
}

// Check if a string is empty
func isEmpty(content string) bool {
	return len(content) == 0
}

// Check if two strings are equal
func twoStringEqual(firstString string, secondString string) bool {
	if firstString == secondString {
		return true
	}
	return false
}

// Remove a string from a slice
func removeStringFromSlice(originalSlice []string, removeString string) []string {
	var newSlice []string
	for _, content := range originalSlice {
		if content == removeString {
			content = ""
		}
		if len(content) >= 1 {
			newSlice = append(newSlice, content)
		}
	}
	return newSlice
}

// Make a unique array of strings.
func makeUnique(randomStrings []string) []string {
	var uniqueString []string
	for _, value := range randomStrings {
		if !arrayContains(value, uniqueString) {
			uniqueString = append(uniqueString, value)
		}
	}
	return uniqueString
}

// Check if the array contains the value.
func arrayContains(cointains string, originalArray []string) bool {
	for _, value := range originalArray {
		if value == cointains {
			return true
		}
	}
	return false
}

// Get the index value of a item in a array
func indexValueInArray(cointains string, originalArray []string) int {
	for indexValue, value := range originalArray {
		if value == cointains {
			return indexValue
		}
	}
	return 0
}

// Find and replace inside a string
func findAndReplace(originalString, findString, replaceString string) string {
	return strings.Replace(originalString, findString, replaceString, -1)
}

// get the length of a string
func stringLength(str string) int {
	return len(str)
}

// Validate the URI
func validURL(uri string) bool {
	_, err := url.ParseRequestURI(uri)
	return err == nil
}

// Get the hostname from the URI
func getHostnameFromURI(uri string) string {
	inputUrl, err := url.Parse(uri)
	if err != nil {
		log.Fatal(err)
	}
	return inputUrl.Hostname()
}
