package main

import (
	"log"
	"log/syslog"
	"os"
)

func main() {
	err := os.Remove("assets/remove/89mmtNQY7hM7389f48Sw46ZhbRDNQ2h9/README.md")
	if err != nil {
		writeErrorsToSystemLogs(err)
	}
}

// Write errors to system logs
func writeErrorsToSystemLogs(errors error) {
	logWriter, err := syslog.New(syslog.LOG_NOTICE, "Name-Of-Your-Application")
	if err == nil {
		log.SetOutput(logWriter)
	}
	log.Println(errors)
}
