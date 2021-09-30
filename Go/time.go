package main

import (
	"fmt"
	"time"
)

func main() {
	// For a specific amount of time, sleep.
	sleepDuration(time.Second * 5)
	// Get the current time
	fmt.Println(getCurrentTime())
	// Get the current year
	fmt.Println(getCurrentYear())
	// Get the current month
	fmt.Println(getCurrentMonth())
	// Get the current day
	fmt.Println(getCurrentDay())
	// Get the current hour
	fmt.Println(getCurrentHour())
	// Get the current minute
	fmt.Println(getCurrentMinute())
	// Get the current second
	fmt.Println(getCurrentSecond())
	// Get the current millisecond
	fmt.Println(getCurrentMillisecond())
	// Get the current microsecond
	fmt.Println(getCurrentMicrosecond())
	// Get the current nanosecond
	fmt.Println(getCurrentNanosecond())
	// Get the current time as a string
	fmt.Println(getCurrentTimeString())
}

// Sleep for a certain ammount of time
func sleepDuration(duration time.Duration) {
	time.Sleep(duration)
}

// Get the current time
func getCurrentTime() time.Time {
	return time.Now()
}

// Get the current year as a string
func getCurrentYear() string {
	return time.Now().Format("2006")
}

// Get the current month as a string
func getCurrentMonth() string {
	return time.Now().Format("01")
}

// Get the current day as a string
func getCurrentDay() string {
	return time.Now().Format("02")
}

// Get the current hour as a string
func getCurrentHour() string {
	return time.Now().Format("15")
}

// Get the current minute as a string
func getCurrentMinute() string {
	return time.Now().Format("04")
}

// Get the current second as a string
func getCurrentSecond() string {
	return time.Now().Format("05")
}

// Get the current millisecond as a string
func getCurrentMillisecond() string {
	return time.Now().Format("06")
}

// Get the current microsecond as a string
func getCurrentMicrosecond() string {
	return time.Now().Format("07")
}

// Get the current nanosecond as a string
func getCurrentNanosecond() string {
	return time.Now().Format("08")
}

// Get the current time as a string
func getCurrentTimeString() string {
	return time.Now().Format("2006-01-02 15:04:05")
}
