package main

import (
	"fmt"
	"math/rand"
	"sort"
)

func main() {
	// Create an array of strings.
	randomString := []string{"apple", "jesus", "map", "china", "ass", "bees", "", ""}
	// Check if the array contains the value.
	if arrayContains("apple", randomString) {
		fmt.Println(true)
	}
	//
	for number, list := range randomString {
		// Number
		if number == 25 {
			fmt.Println("The content of number 25 is", list)
		}
		// Item
		if list == "P" {
			fmt.Println("The letter is", list)
		}
	}
	fmt.Println(randomString)
	// Get the index value of a item in a array
	fmt.Println(indexValueInArray("jesus", randomString))
	// Remove all the empty elements in a array.
	fmt.Println(removeEmptyElements(randomString))
	// Check if the array is empty
	fmt.Println(arrayIsEmpty(randomString))
	// Check if the array isnt empty
	fmt.Println(arrayIsntEmpty(randomString))
	// Remove all the duplicate elements in a array.
	fmt.Println(removeDuplicateElements(randomString))
	// Sort the array
	fmt.Println(sortList(randomString))
	// Combine two arrays together.
	fmt.Println(combineArrays(randomString, randomString))
	// Get the median value of an array.
	fmt.Println(medianOfArray([]float64{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}))
	// Reverse an array
	fmt.Println(reverseArray(randomString))
	// Suffle an array
	fmt.Println(shuffleArray(randomString))
	// Get the first value in the array
	fmt.Println(firstValueInArray(randomString))
	// Get the last value in the array
	fmt.Println(lastValueInArray(randomString))
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

// Remove all the duplicate elements in a array.
func removeDuplicateElements(array []string) []string {
	var newArray []string
	for _, value := range array {
		if !arrayContains(value, newArray) {
			newArray = append(newArray, value)
		}
	}
	return newArray
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

// Remove all the empty elements in a array.
func removeEmptyElements(array []string) []string {
	var newArray []string
	for _, value := range array {
		if len(value) > 0 {
			newArray = append(newArray, value)
		}
	}
	return newArray
}

// Check if the array is empty
func arrayIsEmpty(array []string) bool {
	if len(array) == 0 {
		return true
	}
	return false
}

// Check if the array isnt empty
func arrayIsntEmpty(array []string) bool {
	if len(array) == 0 {
		return false
	}
	return true
}

// Sort the array
func sortList(content []string) []string {
	sort.Strings(content)
	return content
}

// Combine two arrays together.
func combineArrays(firstArray []string, secondArray []string) []string {
	var newArray []string
	for _, value := range firstArray {
		newArray = append(newArray, value)
	}
	for _, value := range secondArray {
		newArray = append(newArray, value)
	}
	return newArray
}

// Get the median value of an array.
func medianOfArray(array []float64) float64 {
	sort.Float64s(array)
	if len(array)%2 == 0 {
		return (array[len(array)/2-1] + array[len(array)/2]) / 2
	}
	return array[len(array)/2]
}

// Reverse an array
func reverseArray(array []string) []string {
	var newArray []string
	for i := len(array) - 1; i >= 0; i-- {
		newArray = append(newArray, array[i])
	}
	return newArray
}

// Suffle an array
func shuffleArray(array []string) []string {
	for i := range array {
		j := rand.Intn(i + 1)
		array[i], array[j] = array[j], array[i]
	}
	return array
}

// Get the first value in the array
func firstValueInArray(array []string) string {
	return array[0]
}

// Get the last value in the array
func lastValueInArray(array []string) string {
	return array[len(array)-1]
}