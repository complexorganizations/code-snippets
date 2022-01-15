import http.client
import json


# Get the external IP of the current system
def get_system_external_ip():
    connection = http.client.HTTPSConnection("api.ipengine.dev")
    connection.request("GET", "/", "", {})
    response = connection.getresponse()
    data = response.read()
    websiteData = data.decode("utf-8")
    return json.loads(websiteData)["network"]["ip"]


def main():
    # Get the external IP of the current system
    print(get_system_external_ip())


main()
