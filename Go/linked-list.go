package main

import (
	"container/list"
	"fmt"
)

func main() {
	// Create a new linked list.
	linkedList := list.New()
	// Add a new element to the end of the linked list.
	addAtEndOfLinkedList(linkedList, 1)
	addAtEndOfLinkedList(linkedList, 2)
	addAtEndOfLinkedList(linkedList, 3)
	addAtEndOfLinkedList(linkedList, 4)
	// Add a new element to the start of the linked list.
	addAtStartOfLinkedList(linkedList, 0)
	// Remove some numbers from the list.
	removeValueFromLinkedList(linkedList, 2)
	// Insert an element into the linked list after a specific index.
	insertAfterIndexLinkedList(linkedList, 5, 1)
	// Insert an element into the linked list before a specific index.
	insertBeforeIndexLinkedList(linkedList, 6, 2)

	// Iterate over the list and print its contents.
	for element := linkedList.Front(); element != nil; element = element.Next() {
		fmt.Println(element.Value)
	}

}

// Add a new element to the end of the linked list.
func addAtEndOfLinkedList(linkedList *list.List, value int) *list.Element {
	return linkedList.PushBack(value)
}

// Add a new element to the start of the linked list.
func addAtStartOfLinkedList(linkedList *list.List, value int) {
	linkedList.PushFront(value)
}

// Remove an element from a linked list.
func removeValueFromLinkedList(linkedList *list.List, value int) {
	for element := linkedList.Front(); element != nil; element = element.Next() {
		if element.Value == value {
			linkedList.Remove(element)
		}
	}
}

// Insert an element into the linked list after a specific index.
func insertAfterIndexLinkedList(linkedList *list.List, value int, index int) {
	element := linkedList.Front()
	for i := 0; i < index; i++ {
		element = element.Next()
	}
	linkedList.InsertBefore(value, element)
}

// Insert an element into the linked list before a specific index.
func insertBeforeIndexLinkedList(linkedList *list.List, value int, index int) {
	element := linkedList.Front()
	for i := 0; i < index; i++ {
		element = element.Next()
	}
	linkedList.InsertAfter(value, element)
}
