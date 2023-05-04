import http.client
import json


# Get the systems external network info
def get_system_external_network_info():
    connection = http.client.HTTPSConnection("api.ipengine.dev")
    connection.request("GET", "/", "", {})
    response = connection.getresponse()
    data = response.read()
    websiteData = data.decode("utf-8")
    return json.loads(websiteData)


def main():
    # Get the systems external network info
    print(get_system_external_network_info())


main()
