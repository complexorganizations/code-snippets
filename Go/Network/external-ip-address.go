package main

import (
	"encoding/json"
	"fmt"
	"io"
	"log"
	"net/http"
)

func main() {
	// Get the external ip of the current machine
	fmt.Println(getExternalIP())
}

// Get the external ip of the current machine
func getExternalIP() string {
	type ipengine struct {
		Network struct {
			IP string `json:"ip"`
		}
	}
	var ipEngineData ipengine
	response, err := http.Get("https://api.ipengine.dev")
	if err != nil {
		log.Fatalln(err)
	}
	body, err := io.ReadAll(response.Body)
	if err != nil {
		log.Fatalln(err)
	}
	err = json.Unmarshal(body, &ipEngineData)
	if err != nil {
		log.Fatalln(err)
	}
	return ipEngineData.Network.IP
}
