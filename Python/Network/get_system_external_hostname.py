import http.client
import json


# Get the external hostname of the current system
def get_system_external_hostname():
    connection = http.client.HTTPSConnection("api.ipengine.dev")
    connection.request("GET", "/", "", {})
    response = connection.getresponse()
    data = response.read()
    websiteData = data.decode("utf-8")
    return json.loads(websiteData)["network"]["hostname"]


def main():
    # Get the external hostname of the current system
    print(get_system_external_hostname())


main()
