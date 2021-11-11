package main

import (
	"container/list"
	"fmt"
)

func main() {
	// Create a new linked list.
	linkedList := list.New()
	// Add element to the start of the linked list.
	element := addAtStartOfLinkedList(linkedList, 10)
	// Print the linked list.
	fmt.Println(element)
}

// Add a new element to the start of the linked list.
func addAtStartOfLinkedList(linkedList *list.List, value int) *list.Element {
	return linkedList.PushFront(value)
}
