package main

import (
	"container/list"
	"fmt"
)

func main() {
	// Create a new linked list.
	linkedList := list.New()
	// Add a new element to the end of the linked list.
	element := addAtEndOfLinkedList(linkedList, 1)
	// Print the linked list.
	fmt.Printf("%v\n", element)
}

// Add a new element to the end of the linked list.
func addAtEndOfLinkedList(linkedList *list.List, value int) *list.Element {
	return linkedList.PushBack(value)
}
